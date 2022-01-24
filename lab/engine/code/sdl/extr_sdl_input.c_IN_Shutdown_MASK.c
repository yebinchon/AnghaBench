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

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * SDL_window ; 
 int /*<<< orphan*/  mouseAvailable ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC4( void )
{
	FUNC3( );

	FUNC1( FUNC0( "r_fullscreen" ) != 0 );
	mouseAvailable = qfalse;

	FUNC2( );

	SDL_window = NULL;
}