
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Cvar_VariableIntegerValue (char*) ;
 int IN_DeactivateMouse (int) ;
 int IN_ShutdownJoystick () ;
 int SDL_StopTextInput () ;
 int * SDL_window ;
 int mouseAvailable ;
 int qfalse ;

void IN_Shutdown( void )
{
 SDL_StopTextInput( );

 IN_DeactivateMouse( Cvar_VariableIntegerValue( "r_fullscreen" ) != 0 );
 mouseAvailable = qfalse;

 IN_ShutdownJoystick( );

 SDL_window = ((void*)0);
}
