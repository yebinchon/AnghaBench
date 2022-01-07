
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ modified; scalar_t__ integer; } ;


 int IN_GobbleMotionEvents () ;
 int SDL_FALSE ;
 int SDL_INIT_VIDEO ;
 int SDL_SetRelativeMouseMode (int ) ;
 int SDL_SetWindowGrab (int ,int ) ;
 int SDL_TRUE ;
 int SDL_WasInit (int ) ;
 int SDL_window ;
 TYPE_1__* in_nograb ;
 scalar_t__ mouseActive ;
 int mouseAvailable ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

__attribute__((used)) static void IN_ActivateMouse( qboolean isFullscreen )
{
 if (!mouseAvailable || !SDL_WasInit( SDL_INIT_VIDEO ) )
  return;

 if( !mouseActive )
 {
  SDL_SetRelativeMouseMode( SDL_TRUE );
  SDL_SetWindowGrab( SDL_window, SDL_TRUE );

  IN_GobbleMotionEvents( );
 }


 if( !isFullscreen )
 {
  if( in_nograb->modified || !mouseActive )
  {
   if( in_nograb->integer ) {
    SDL_SetRelativeMouseMode( SDL_FALSE );
    SDL_SetWindowGrab( SDL_window, SDL_FALSE );
   } else {
    SDL_SetRelativeMouseMode( SDL_TRUE );
    SDL_SetWindowGrab( SDL_window, SDL_TRUE );
   }

   in_nograb->modified = qfalse;
  }
 }

 mouseActive = qtrue;
}
