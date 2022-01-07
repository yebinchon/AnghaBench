
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
typedef int SDL_Window ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int Com_DPrintf (char*) ;
 int Com_Error (int ,char*) ;
 void* Cvar_Get (char*,char*,int) ;
 int Cvar_SetValue (char*,int) ;
 scalar_t__ Cvar_VariableIntegerValue (char*) ;
 int ERR_FATAL ;
 int IN_DeactivateMouse (int) ;
 int IN_InitJoystick () ;
 int SDL_GetWindowFlags (int *) ;
 int SDL_INIT_VIDEO ;
 int SDL_StartTextInput () ;
 int SDL_WINDOW_INPUT_FOCUS ;
 int SDL_WINDOW_MINIMIZED ;
 int SDL_WasInit (int ) ;
 int * SDL_window ;
 void* in_joystick ;
 void* in_joystickThreshold ;
 void* in_keyboardDebug ;
 TYPE_1__* in_mouse ;
 void* in_nograb ;
 int mouseAvailable ;

void IN_Init( void *windowData )
{
 int appState;

 if( !SDL_WasInit( SDL_INIT_VIDEO ) )
 {
  Com_Error( ERR_FATAL, "IN_Init called before SDL_Init( SDL_INIT_VIDEO )" );
  return;
 }

 SDL_window = (SDL_Window *)windowData;

 Com_DPrintf( "\n------- Input Initialization -------\n" );

 in_keyboardDebug = Cvar_Get( "in_keyboardDebug", "0", CVAR_ARCHIVE );


 in_mouse = Cvar_Get( "in_mouse", "1", CVAR_ARCHIVE );
 in_nograb = Cvar_Get( "in_nograb", "0", CVAR_ARCHIVE );

 in_joystick = Cvar_Get( "in_joystick", "0", CVAR_ARCHIVE|CVAR_LATCH );
 in_joystickThreshold = Cvar_Get( "joy_threshold", "0.15", CVAR_ARCHIVE );

 SDL_StartTextInput( );

 mouseAvailable = ( in_mouse->value != 0 );
 IN_DeactivateMouse( Cvar_VariableIntegerValue( "r_fullscreen" ) != 0 );

 appState = SDL_GetWindowFlags( SDL_window );
 Cvar_SetValue( "com_unfocused", !( appState & SDL_WINDOW_INPUT_FOCUS ) );
 Cvar_SetValue( "com_minimized", appState & SDL_WINDOW_MINIMIZED );

 IN_InitJoystick( );
 Com_DPrintf( "------------------------------------\n" );
}
