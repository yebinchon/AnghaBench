#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_6__ {int /*<<< orphan*/  string; } ;
struct TYPE_5__ {void* modified; scalar_t__ integer; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* IN_Restart ) () ;int /*<<< orphan*/  (* Cmd_ExecuteText ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  (* Cvar_Set ) (char*,char*) ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;scalar_t__ (* Cvar_VariableIntegerValue ) (char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int SDL_WINDOW_FULLSCREEN ; 
 int /*<<< orphan*/  SDL_window ; 
 void* qfalse ; 
 TYPE_3__* r_drawBuffer ; 
 TYPE_2__* r_fullscreen ; 
 TYPE_1__ ri ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9( void )
{
	// don't flip if drawing to front buffer
	if ( FUNC0( r_drawBuffer->string, "GL_FRONT" ) != 0 )
	{
		FUNC1( SDL_window );
	}

	if( r_fullscreen->modified )
	{
		int         fullscreen;
		qboolean    needToToggle;
		qboolean    sdlToggled = qfalse;

		// Find out the current state
		fullscreen = !!( FUNC2( SDL_window ) & SDL_WINDOW_FULLSCREEN );

		if( r_fullscreen->integer && ri.Cvar_VariableIntegerValue( "in_nograb" ) )
		{
			ri.Printf( PRINT_ALL, "Fullscreen not allowed with in_nograb 1\n");
			ri.Cvar_Set( "r_fullscreen", "0" );
			r_fullscreen->modified = qfalse;
		}

		// Is the state we want different from the current state?
		needToToggle = !!r_fullscreen->integer != fullscreen;

		if( needToToggle )
		{
			sdlToggled = FUNC3( SDL_window, r_fullscreen->integer ) >= 0;

			// SDL_WM_ToggleFullScreen didn't work, so do it the slow way
			if( !sdlToggled )
				ri.Cmd_ExecuteText(EXEC_APPEND, "vid_restart\n");

			ri.IN_Restart( );
		}

		r_fullscreen->modified = qfalse;
	}
}