
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Cvar_VariableString (char*) ;
 int PID_FILENAME ;
 char* va (char*,char const*,char const*,int ) ;

__attribute__((used)) static char *Sys_PIDFileName( const char *gamedir )
{
 const char *homePath = Cvar_VariableString( "fs_homepath" );

 if( *homePath != '\0' )
  return va( "%s/%s/%s", homePath, gamedir, PID_FILENAME );

 return ((void*)0);
}
