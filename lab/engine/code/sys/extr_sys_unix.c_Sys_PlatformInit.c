
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int Sys_SetFloatEnv () ;
 char* getenv (char*) ;
 scalar_t__ isatty (int ) ;
 int stdinIsATTY ;
 int strcmp (char const*,char*) ;

void Sys_PlatformInit( void )
{
 const char* term = getenv( "TERM" );

 Sys_SetFloatEnv();

 stdinIsATTY = isatty( STDIN_FILENO ) &&
  !( term && ( !strcmp( term, "raw" ) || !strcmp( term, "dumb" ) ) );
}
