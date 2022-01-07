
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*) ;
 int IN_Restart () ;
 int SDL_INIT_VIDEO ;
 int SDL_WasInit (int ) ;

void Sys_In_Restart_f( void )
{

 if( !SDL_WasInit( SDL_INIT_VIDEO ) )
 {
  Com_Printf( "in_restart: Cannot restart input while video is shutdown\n" );
  return;
 }


 IN_Restart( );
}
