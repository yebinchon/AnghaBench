
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CON_Shutdown () ;
 int FS_GetCurrentGameDir () ;
 int NET_Shutdown () ;
 int SDL_Quit () ;
 int Sys_PlatformExit () ;
 int Sys_RemovePIDFile (int ) ;
 scalar_t__ com_fullyInitialized ;
 int exit (int) ;

__attribute__((used)) static __attribute__ ((noreturn)) void Sys_Exit( int exitCode )
{
 CON_Shutdown( );


 SDL_Quit( );


 if( exitCode < 2 && com_fullyInitialized )
 {

  Sys_RemovePIDFile( FS_GetCurrentGameDir() );
 }

 NET_Shutdown( );

 Sys_PlatformExit( );

 exit( exitCode );
}
