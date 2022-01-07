
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 int Cvar_Set2 (int ,int ,int ) ;
 char* Cvar_VariableString (int ) ;
 int Cvar_VariableValue (int ) ;
 int qfalse ;
 scalar_t__ strcmp (char*,int ) ;
 int va (char*,int) ;

void Cvar_Toggle_f( void ) {
 int i, c = Cmd_Argc();
 char *curval;

 if(c < 2) {
  Com_Printf("usage: toggle <variable> [value1, value2, ...]\n");
  return;
 }

 if(c == 2) {
  Cvar_Set2(Cmd_Argv(1), va("%d",
   !Cvar_VariableValue(Cmd_Argv(1))),
   qfalse);
  return;
 }

 if(c == 3) {
  Com_Printf("toggle: nothing to toggle to\n");
  return;
 }

 curval = Cvar_VariableString(Cmd_Argv(1));



 for(i = 2; i + 1 < c; i++) {
  if(strcmp(curval, Cmd_Argv(i)) == 0) {
   Cvar_Set2(Cmd_Argv(1), Cmd_Argv(i + 1), qfalse);
   return;
  }
 }


 Cvar_Set2(Cmd_Argv(1), Cmd_Argv(2), qfalse);
}
