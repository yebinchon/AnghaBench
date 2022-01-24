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
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_4__ {int isFullscreen; } ;
struct TYPE_5__ {TYPE_1__ glconfig; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int KEYCATCH_CONSOLE ; 
 int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int SDL_WINDOW_INPUT_FOCUS ; 
 int /*<<< orphan*/  SDL_window ; 
 scalar_t__ FUNC8 () ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 
 scalar_t__ in_eventTime ; 
 scalar_t__ vidRestartTime ; 

void FUNC9( void )
{
	qboolean loading;

	FUNC4( );

	// If not DISCONNECTED (main menu) or ACTIVE (in game), we're loading
	loading = ( clc.state != CA_DISCONNECTED && clc.state != CA_ACTIVE );

	// update isFullscreen since it might of changed since the last vid_restart
	cls.glconfig.isFullscreen = FUNC1( "r_fullscreen" ) != 0;

	if( !cls.glconfig.isFullscreen && ( FUNC6( ) & KEYCATCH_CONSOLE ) )
	{
		// Console is down in windowed mode
		FUNC3( cls.glconfig.isFullscreen );
	}
	else if( !cls.glconfig.isFullscreen && loading )
	{
		// Loading in windowed mode
		FUNC3( cls.glconfig.isFullscreen );
	}
	else if( !( FUNC7( SDL_window ) & SDL_WINDOW_INPUT_FOCUS ) )
	{
		// Window not got focus
		FUNC3( cls.glconfig.isFullscreen );
	}
	else
		FUNC2( cls.glconfig.isFullscreen );

	FUNC5( );

	// Set event time for next frame to earliest possible time an event could happen
	in_eventTime = FUNC8( );

	// In case we had to delay actual restart of video system
	if( ( vidRestartTime != 0 ) && ( vidRestartTime < FUNC8( ) ) )
	{
		vidRestartTime = 0;
		FUNC0( "vid_restart\n" );
	}
}