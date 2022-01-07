
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CVAR_NONEXISTENT ;
 int CVAR_USER_CREATED ;
 int Cmd_ArgsFrom (int) ;
 char* Cmd_Argv (int) ;
 int Cmd_TokenizeString (int ) ;
 scalar_t__ Cvar_Flags (char*) ;
 int Cvar_Get (char*,int ,int ) ;
 int Cvar_Set2 (char*,int ,int ) ;
 int * com_consoleLines ;
 int com_numConsoleLines ;
 int qfalse ;
 scalar_t__ strcmp (char*,char const*) ;

void Com_StartupVariable( const char *match ) {
 int i;
 char *s;

 for (i=0 ; i < com_numConsoleLines ; i++) {
  Cmd_TokenizeString( com_consoleLines[i] );
  if ( strcmp( Cmd_Argv(0), "set" ) ) {
   continue;
  }

  s = Cmd_Argv(1);

  if(!match || !strcmp(s, match))
  {
   if(Cvar_Flags(s) == CVAR_NONEXISTENT)
    Cvar_Get(s, Cmd_ArgsFrom(2), CVAR_USER_CREATED);
   else
    Cvar_Set2(s, Cmd_ArgsFrom(2), qfalse);
  }
 }
}
