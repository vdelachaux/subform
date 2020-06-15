C_OBJECT:C1216($e)

$e:=FORM Event:C1606

Case of 
		
		  //______________________________________________________
	: ($e.code=On Getting Focus:K2:7)
		
		  // Memorize the last focus
		Form:C1466.focus:=OBJECT Get name:C1087(Object with focus:K67:3)
		
		  //______________________________________________________
	: ($e.code=On Activate:K2:9)
		
		If (Form:C1466.focus=Null:C1517)
			
			GOTO OBJECT:C206(*;"input1")
			
		Else 
			
			  // Restore the last focus
			GOTO OBJECT:C206(*;Form:C1466.focus)
			
		End if 
		
		  //______________________________________________________
	Else 
		
		  // A "Case of" statement should never omit "Else"
		  //______________________________________________________
End case 