#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SDL_Event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_GETEVENT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SDL_MOUSEMOTION ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4( void )
{
	SDL_Event dummy[ 1 ];
	int val = 0;

	// Gobble any mouse motion events
	FUNC3( );
	while( ( val = FUNC2( dummy, 1, SDL_GETEVENT,
		SDL_MOUSEMOTION, SDL_MOUSEMOTION ) ) > 0 ) { }

	if ( val < 0 )
		FUNC0( "IN_GobbleMotionEvents failed: %s\n", FUNC1( ) );
}