
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_GameControllerClose (int *) ;
 int SDL_INIT_GAMECONTROLLER ;
 int SDL_INIT_JOYSTICK ;
 int SDL_JoystickClose (int *) ;
 int SDL_QuitSubSystem (int ) ;
 int SDL_WasInit (int ) ;
 int * gamepad ;
 int * stick ;

__attribute__((used)) static void IN_ShutdownJoystick( void )
{
 if ( !SDL_WasInit( SDL_INIT_GAMECONTROLLER ) )
  return;

 if ( !SDL_WasInit( SDL_INIT_JOYSTICK ) )
  return;

 if (gamepad)
 {
  SDL_GameControllerClose(gamepad);
  gamepad = ((void*)0);
 }

 if (stick)
 {
  SDL_JoystickClose(stick);
  stick = ((void*)0);
 }

 SDL_QuitSubSystem(SDL_INIT_GAMECONTROLLER);
 SDL_QuitSubSystem(SDL_INIT_JOYSTICK);
}
