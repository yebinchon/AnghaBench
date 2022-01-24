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
typedef  int Uint8 ;
struct TYPE_6__ {float value; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int* buttons; unsigned int oldhats; int* oldaaxes; unsigned int oldaxes; } ;
typedef  int Sint16 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int K_JOY1 ; 
 int MAX_JOYSTICK_AXIS ; 
#define  SDL_HAT_DOWN 135 
#define  SDL_HAT_LEFT 134 
#define  SDL_HAT_LEFTDOWN 133 
#define  SDL_HAT_LEFTUP 132 
#define  SDL_HAT_RIGHT 131 
#define  SDL_HAT_RIGHTDOWN 130 
#define  SDL_HAT_RIGHTUP 129 
#define  SDL_HAT_UP 128 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  SE_JOYSTICK_AXIS ; 
 int /*<<< orphan*/  SE_KEY ; 
 int /*<<< orphan*/  SE_MOUSE ; 
 int FUNC12 (int) ; 
 scalar_t__ gamepad ; 
 int* hat_keys ; 
 int /*<<< orphan*/  in_eventTime ; 
 TYPE_3__* in_joystickThreshold ; 
 TYPE_2__* in_joystickUseAnalog ; 
 int* joy_keys ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  stick ; 
 TYPE_1__ stick_state ; 

__attribute__((used)) static void FUNC13( void )
{
	unsigned int axes = 0;
	unsigned int hats = 0;
	int total = 0;
	int i = 0;

	if (gamepad)
	{
		FUNC2();
		return;
	}

	if (!stick)
		return;

	FUNC11();

	// update the ball state.
	total = FUNC8(stick);
	if (total > 0)
	{
		int balldx = 0;
		int balldy = 0;
		for (i = 0; i < total; i++)
		{
			int dx = 0;
			int dy = 0;
			FUNC4(stick, i, &dx, &dy);
			balldx += dx;
			balldy += dy;
		}
		if (balldx || balldy)
		{
			// !!! FIXME: is this good for stick balls, or just mice?
			// Scale like the mouse input...
			if (FUNC12(balldx) > 1)
				balldx *= 2;
			if (FUNC12(balldy) > 1)
				balldy *= 2;
			FUNC1( in_eventTime, SE_MOUSE, balldx, balldy, 0, NULL );
		}
	}

	// now query the stick buttons...
	total = FUNC9(stick);
	if (total > 0)
	{
		if (total > FUNC0(stick_state.buttons))
			total = FUNC0(stick_state.buttons);
		for (i = 0; i < total; i++)
		{
			qboolean pressed = (FUNC5(stick, i) != 0);
			if (pressed != stick_state.buttons[i])
			{
				FUNC1( in_eventTime, SE_KEY, K_JOY1 + i, pressed, 0, NULL );
				stick_state.buttons[i] = pressed;
			}
		}
	}

	// look at the hats...
	total = FUNC10(stick);
	if (total > 0)
	{
		if (total > 4) total = 4;
		for (i = 0; i < total; i++)
		{
			((Uint8 *)&hats)[i] = FUNC6(stick, i);
		}
	}

	// update hat state
	if (hats != stick_state.oldhats)
	{
		for( i = 0; i < 4; i++ ) {
			if( ((Uint8 *)&hats)[i] != ((Uint8 *)&stick_state.oldhats)[i] ) {
				// release event
				switch( ((Uint8 *)&stick_state.oldhats)[i] ) {
					case SDL_HAT_UP:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 0], qfalse, 0, NULL );
						break;
					case SDL_HAT_RIGHT:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 1], qfalse, 0, NULL );
						break;
					case SDL_HAT_DOWN:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 2], qfalse, 0, NULL );
						break;
					case SDL_HAT_LEFT:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 3], qfalse, 0, NULL );
						break;
					case SDL_HAT_RIGHTUP:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 0], qfalse, 0, NULL );
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 1], qfalse, 0, NULL );
						break;
					case SDL_HAT_RIGHTDOWN:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 2], qfalse, 0, NULL );
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 1], qfalse, 0, NULL );
						break;
					case SDL_HAT_LEFTUP:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 0], qfalse, 0, NULL );
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 3], qfalse, 0, NULL );
						break;
					case SDL_HAT_LEFTDOWN:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 2], qfalse, 0, NULL );
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 3], qfalse, 0, NULL );
						break;
					default:
						break;
				}
				// press event
				switch( ((Uint8 *)&hats)[i] ) {
					case SDL_HAT_UP:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 0], qtrue, 0, NULL );
						break;
					case SDL_HAT_RIGHT:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 1], qtrue, 0, NULL );
						break;
					case SDL_HAT_DOWN:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 2], qtrue, 0, NULL );
						break;
					case SDL_HAT_LEFT:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 3], qtrue, 0, NULL );
						break;
					case SDL_HAT_RIGHTUP:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 0], qtrue, 0, NULL );
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 1], qtrue, 0, NULL );
						break;
					case SDL_HAT_RIGHTDOWN:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 2], qtrue, 0, NULL );
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 1], qtrue, 0, NULL );
						break;
					case SDL_HAT_LEFTUP:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 0], qtrue, 0, NULL );
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 3], qtrue, 0, NULL );
						break;
					case SDL_HAT_LEFTDOWN:
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 2], qtrue, 0, NULL );
						FUNC1( in_eventTime, SE_KEY, hat_keys[4*i + 3], qtrue, 0, NULL );
						break;
					default:
						break;
				}
			}
		}
	}

	// save hat state
	stick_state.oldhats = hats;

	// finally, look at the axes...
	total = FUNC7(stick);
	if (total > 0)
	{
		if (in_joystickUseAnalog->integer)
		{
			if (total > MAX_JOYSTICK_AXIS) total = MAX_JOYSTICK_AXIS;
			for (i = 0; i < total; i++)
			{
				Sint16 axis = FUNC3(stick, i);
				float f = ( (float) FUNC12(axis) ) / 32767.0f;
				
				if( f < in_joystickThreshold->value ) axis = 0;

				if ( axis != stick_state.oldaaxes[i] )
				{
					FUNC1( in_eventTime, SE_JOYSTICK_AXIS, i, axis, 0, NULL );
					stick_state.oldaaxes[i] = axis;
				}
			}
		}
		else
		{
			if (total > 16) total = 16;
			for (i = 0; i < total; i++)
			{
				Sint16 axis = FUNC3(stick, i);
				float f = ( (float) axis ) / 32767.0f;
				if( f < -in_joystickThreshold->value ) {
					axes |= ( 1 << ( i * 2 ) );
				} else if( f > in_joystickThreshold->value ) {
					axes |= ( 1 << ( ( i * 2 ) + 1 ) );
				}
			}
		}
	}

	/* Time to update axes state based on old vs. new. */
	if (axes != stick_state.oldaxes)
	{
		for( i = 0; i < 16; i++ ) {
			if( ( axes & ( 1 << i ) ) && !( stick_state.oldaxes & ( 1 << i ) ) ) {
				FUNC1( in_eventTime, SE_KEY, joy_keys[i], qtrue, 0, NULL );
			}

			if( !( axes & ( 1 << i ) ) && ( stick_state.oldaxes & ( 1 << i ) ) ) {
				FUNC1( in_eventTime, SE_KEY, joy_keys[i], qfalse, 0, NULL );
			}
		}
	}

	/* Save for future generations. */
	stick_state.oldaxes = axes;
}