
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Cbuf_AddText (char*) ;
 int Q_stricmpn (char*,char*,int) ;
 char** com_consoleLines ;
 int com_numConsoleLines ;
 int qfalse ;
 int qtrue ;

qboolean Com_AddStartupCommands( void ) {
 int i;
 qboolean added;

 added = qfalse;

 for (i=0 ; i < com_numConsoleLines ; i++) {
  if ( !com_consoleLines[i] || !com_consoleLines[i][0] ) {
   continue;
  }


  if ( !Q_stricmpn( com_consoleLines[i], "set ", 4 ) ) {
   continue;
  }

  added = qtrue;
  Cbuf_AddText( com_consoleLines[i] );
  Cbuf_AddText( "\n" );
 }

 return added;
}
