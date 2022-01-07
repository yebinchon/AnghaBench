
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_Event ;


 int Com_Printf (char*,int ) ;
 int SDL_GETEVENT ;
 int SDL_GetError () ;
 int SDL_MOUSEMOTION ;
 int SDL_PeepEvents (int *,int,int ,int ,int ) ;
 int SDL_PumpEvents () ;

__attribute__((used)) static void IN_GobbleMotionEvents( void )
{
 SDL_Event dummy[ 1 ];
 int val = 0;


 SDL_PumpEvents( );
 while( ( val = SDL_PeepEvents( dummy, 1, SDL_GETEVENT,
  SDL_MOUSEMOTION, SDL_MOUSEMOTION ) ) > 0 ) { }

 if ( val < 0 )
  Com_Printf( "IN_GobbleMotionEvents failed: %s\n", SDL_GetError( ) );
}
