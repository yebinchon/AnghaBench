
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ELastCommand ;


 int EmitString (char*) ;



 int LastCommand ;
 int STACK_POP (int) ;

__attribute__((used)) static void EmitCommand(ELastCommand command)
{
 switch(command)
 {
  case 130:
   EmitString("89 04 9F");
   break;

  case 129:
   STACK_POP(1);
   break;

  case 128:
   STACK_POP(2);
   break;
  default:
   break;
 }
 LastCommand = command;
}
