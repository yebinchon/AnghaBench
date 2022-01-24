#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
typedef  int /*<<< orphan*/  usercmd_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_9__ {scalar_t__* viewangles; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* issue_console_commands ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  userdata; TYPE_1__ hooks; } ;
typedef  TYPE_2__ DeepmindContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*) ; 
 size_t YAW ; 
 TYPE_5__ cl ; 
 TYPE_4__* cl_debugMove ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

usercmd_t FUNC12( void ) {
	usercmd_t	cmd;
	vec3_t		oldAngles;
	DeepmindContext* ctx = FUNC9();

	FUNC8( cl.viewangles, oldAngles );

	// keyboard angle adjustment
	FUNC0 ();
	
	FUNC6( &cmd, 0, sizeof( cmd ) );

	FUNC1( &cmd );

	// get basic movement from keyboard
	FUNC4( &cmd );

	// get basic movement from mouse
	FUNC5( &cmd );

	// get basic movement from joystick
	FUNC3( &cmd );

	// store out the final values
	FUNC2( oldAngles, &cmd );

	ctx->hooks.issue_console_commands( ctx->userdata );

	// draw debug graphs of turning for mouse testing
	if ( cl_debugMove->integer ) {
		if ( cl_debugMove->integer == 1 ) {
			FUNC7( FUNC10(cl.viewangles[YAW] - oldAngles[YAW]) );
		}
		if ( cl_debugMove->integer == 2 ) {
			FUNC7( FUNC10(cl.viewangles[PITCH] - oldAngles[PITCH]) );
		}
	}

	return cmd;
}