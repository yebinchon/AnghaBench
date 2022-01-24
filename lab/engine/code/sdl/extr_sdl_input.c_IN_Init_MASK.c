#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ value; } ;
typedef  int /*<<< orphan*/  SDL_Window ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int SDL_WINDOW_INPUT_FOCUS ; 
 int SDL_WINDOW_MINIMIZED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SDL_window ; 
 void* in_joystick ; 
 void* in_joystickThreshold ; 
 void* in_keyboardDebug ; 
 TYPE_1__* in_mouse ; 
 void* in_nograb ; 
 int mouseAvailable ; 

void FUNC10( void *windowData )
{
	int appState;

	if( !FUNC9( SDL_INIT_VIDEO ) )
	{
		FUNC1( ERR_FATAL, "IN_Init called before SDL_Init( SDL_INIT_VIDEO )" );
		return;
	}

	SDL_window = (SDL_Window *)windowData;

	FUNC0( "\n------- Input Initialization -------\n" );

	in_keyboardDebug = FUNC2( "in_keyboardDebug", "0", CVAR_ARCHIVE );

	// mouse variables
	in_mouse = FUNC2( "in_mouse", "1", CVAR_ARCHIVE );
	in_nograb = FUNC2( "in_nograb", "0", CVAR_ARCHIVE );

	in_joystick = FUNC2( "in_joystick", "0", CVAR_ARCHIVE|CVAR_LATCH );
	in_joystickThreshold = FUNC2( "joy_threshold", "0.15", CVAR_ARCHIVE );

	FUNC8( );

	mouseAvailable = ( in_mouse->value != 0 );
	FUNC5( FUNC4( "r_fullscreen" ) != 0 );

	appState = FUNC7( SDL_window );
	FUNC3( "com_unfocused",	!( appState & SDL_WINDOW_INPUT_FOCUS ) );
	FUNC3( "com_minimized", appState & SDL_WINDOW_MINIMIZED );

	FUNC6( );
	FUNC0( "------------------------------------\n" );
}