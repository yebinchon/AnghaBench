
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int KEYCATCH_CONSOLE ;
 int Key_GetCatcher () ;
 int Q_stricmp (char const*,char*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean CL_BindUICommand( const char *cmd ) {
 if ( Key_GetCatcher( ) & KEYCATCH_CONSOLE )
  return qfalse;

 if ( !Q_stricmp( cmd, "toggleconsole" ) )
  return qtrue;
 if ( !Q_stricmp( cmd, "togglemenu" ) )
  return qtrue;

 return qfalse;
}
