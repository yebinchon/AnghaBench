
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_4__ {int isFullscreen; } ;
struct TYPE_5__ {TYPE_1__ glconfig; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_DISCONNECTED ;
 int Cbuf_AddText (char*) ;
 scalar_t__ Cvar_VariableIntegerValue (char*) ;
 int IN_ActivateMouse (int) ;
 int IN_DeactivateMouse (int) ;
 int IN_JoyMove () ;
 int IN_ProcessEvents () ;
 int KEYCATCH_CONSOLE ;
 int Key_GetCatcher () ;
 int SDL_GetWindowFlags (int ) ;
 int SDL_WINDOW_INPUT_FOCUS ;
 int SDL_window ;
 scalar_t__ Sys_Milliseconds () ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 scalar_t__ in_eventTime ;
 scalar_t__ vidRestartTime ;

void IN_Frame( void )
{
 qboolean loading;

 IN_JoyMove( );


 loading = ( clc.state != CA_DISCONNECTED && clc.state != CA_ACTIVE );


 cls.glconfig.isFullscreen = Cvar_VariableIntegerValue( "r_fullscreen" ) != 0;

 if( !cls.glconfig.isFullscreen && ( Key_GetCatcher( ) & KEYCATCH_CONSOLE ) )
 {

  IN_DeactivateMouse( cls.glconfig.isFullscreen );
 }
 else if( !cls.glconfig.isFullscreen && loading )
 {

  IN_DeactivateMouse( cls.glconfig.isFullscreen );
 }
 else if( !( SDL_GetWindowFlags( SDL_window ) & SDL_WINDOW_INPUT_FOCUS ) )
 {

  IN_DeactivateMouse( cls.glconfig.isFullscreen );
 }
 else
  IN_ActivateMouse( cls.glconfig.isFullscreen );

 IN_ProcessEvents( );


 in_eventTime = Sys_Milliseconds( );


 if( ( vidRestartTime != 0 ) && ( vidRestartTime < Sys_Milliseconds( ) ) )
 {
  vidRestartTime = 0;
  Cbuf_AddText( "vid_restart\n" );
 }
}
