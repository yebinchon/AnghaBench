
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int vidWidth; int vidHeight; } ;
struct TYPE_4__ {TYPE_1__ glconfig; } ;


 int IN_GobbleMotionEvents () ;
 int SDL_FALSE ;
 int SDL_GetWindowFlags (int ) ;
 int SDL_INIT_VIDEO ;
 int SDL_SetRelativeMouseMode (int ) ;
 int SDL_SetWindowGrab (int ,int ) ;
 int SDL_ShowCursor (int ) ;
 int SDL_TRUE ;
 int SDL_WINDOW_MOUSE_FOCUS ;
 int SDL_WarpMouseInWindow (int ,int,int) ;
 int SDL_WasInit (int ) ;
 int SDL_window ;
 TYPE_2__ cls ;
 scalar_t__ mouseActive ;
 int mouseAvailable ;
 scalar_t__ qfalse ;

__attribute__((used)) static void IN_DeactivateMouse( qboolean isFullscreen )
{
 if( !SDL_WasInit( SDL_INIT_VIDEO ) )
  return;



 if( !isFullscreen )
  SDL_ShowCursor( SDL_TRUE );

 if( !mouseAvailable )
  return;

 if( mouseActive )
 {
  IN_GobbleMotionEvents( );

  SDL_SetWindowGrab( SDL_window, SDL_FALSE );
  SDL_SetRelativeMouseMode( SDL_FALSE );


  if( SDL_GetWindowFlags( SDL_window ) & SDL_WINDOW_MOUSE_FOCUS )
   SDL_WarpMouseInWindow( SDL_window, cls.glconfig.vidWidth / 2, cls.glconfig.vidHeight / 2 );

  mouseActive = qfalse;
 }
}
