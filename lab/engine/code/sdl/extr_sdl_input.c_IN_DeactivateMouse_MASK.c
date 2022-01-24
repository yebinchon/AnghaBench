#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {int vidWidth; int vidHeight; } ;
struct TYPE_4__ {TYPE_1__ glconfig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SDL_FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_TRUE ; 
 int SDL_WINDOW_MOUSE_FOCUS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_window ; 
 TYPE_2__ cls ; 
 scalar_t__ mouseActive ; 
 int /*<<< orphan*/  mouseAvailable ; 
 scalar_t__ qfalse ; 

__attribute__((used)) static void FUNC7( qboolean isFullscreen )
{
	if( !FUNC6( SDL_INIT_VIDEO ) )
		return;

	// Always show the cursor when the mouse is disabled,
	// but not when fullscreen
	if( !isFullscreen )
		FUNC4( SDL_TRUE );

	if( !mouseAvailable )
		return;

	if( mouseActive )
	{
		FUNC0( );

		FUNC3( SDL_window, SDL_FALSE );
		FUNC2( SDL_FALSE );

		// Don't warp the mouse unless the cursor is within the window
		if( FUNC1( SDL_window ) & SDL_WINDOW_MOUSE_FOCUS )
			FUNC5( SDL_window, cls.glconfig.vidWidth / 2, cls.glconfig.vidHeight / 2 );

		mouseActive = qfalse;
	}
}