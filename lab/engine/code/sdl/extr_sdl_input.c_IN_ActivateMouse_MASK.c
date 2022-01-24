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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {scalar_t__ modified; scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SDL_FALSE ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_window ; 
 TYPE_1__* in_nograb ; 
 scalar_t__ mouseActive ; 
 int /*<<< orphan*/  mouseAvailable ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 

__attribute__((used)) static void FUNC4( qboolean isFullscreen )
{
	if (!mouseAvailable || !FUNC3( SDL_INIT_VIDEO ) )
		return;

	if( !mouseActive )
	{
		FUNC1( SDL_TRUE );
		FUNC2( SDL_window, SDL_TRUE );

		FUNC0( );
	}

	// in_nograb makes no sense in fullscreen mode
	if( !isFullscreen )
	{
		if( in_nograb->modified || !mouseActive )
		{
			if( in_nograb->integer ) {
				FUNC1( SDL_FALSE );
				FUNC2( SDL_window, SDL_FALSE );
			} else {
				FUNC1( SDL_TRUE );
				FUNC2( SDL_window, SDL_TRUE );
			}

			in_nograb->modified = qfalse;
		}
	}

	mouseActive = qtrue;
}