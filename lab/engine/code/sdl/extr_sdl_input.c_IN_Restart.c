
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_Init (int ) ;
 int IN_ShutdownJoystick () ;
 int SDL_window ;

void IN_Restart( void )
{
 IN_ShutdownJoystick( );
 IN_Init( SDL_window );
}
