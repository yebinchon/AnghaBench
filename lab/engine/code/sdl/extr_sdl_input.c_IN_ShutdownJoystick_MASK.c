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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDL_INIT_GAMECONTROLLER ; 
 int /*<<< orphan*/  SDL_INIT_JOYSTICK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * gamepad ; 
 int /*<<< orphan*/ * stick ; 

__attribute__((used)) static void FUNC4( void )
{
	if ( !FUNC3( SDL_INIT_GAMECONTROLLER ) )
		return;

	if ( !FUNC3( SDL_INIT_JOYSTICK ) )
		return;

	if (gamepad)
	{
		FUNC0(gamepad);
		gamepad = NULL;
	}

	if (stick)
	{
		FUNC1(stick);
		stick = NULL;
	}

	FUNC2(SDL_INIT_GAMECONTROLLER);
	FUNC2(SDL_INIT_JOYSTICK);
}