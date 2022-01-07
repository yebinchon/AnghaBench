
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Cmd_Argv (int ) ;
 int Cmd_TokenizeString (scalar_t__*) ;
 int Q_stricmp (int ,char*) ;
 scalar_t__** com_consoleLines ;
 int com_numConsoleLines ;
 int qfalse ;
 int qtrue ;

qboolean Com_SafeMode( void ) {
 int i;

 for ( i = 0 ; i < com_numConsoleLines ; i++ ) {
  Cmd_TokenizeString( com_consoleLines[i] );
  if ( !Q_stricmp( Cmd_Argv(0), "safe" )
   || !Q_stricmp( Cmd_Argv(0), "cvar_restart" ) ) {
   com_consoleLines[i][0] = 0;
   return qtrue;
  }
 }
 return qfalse;
}
