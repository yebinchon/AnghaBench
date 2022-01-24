#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_10__ {int /*<<< orphan*/ * angles; int /*<<< orphan*/  buttons; int /*<<< orphan*/  upmove; int /*<<< orphan*/  rightmove; int /*<<< orphan*/  forwardmove; int /*<<< orphan*/  serverTime; int /*<<< orphan*/  weapon; } ;
typedef  TYPE_3__ usercmd_t ;
struct TYPE_12__ {void** viewangles; int /*<<< orphan*/  serverTime; int /*<<< orphan*/  cgameUserCmdValue; } ;
struct TYPE_9__ {scalar_t__ (* get_native_app ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_actions ) (int /*<<< orphan*/ ,double*,double*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_actions ) (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int (* engine_frame_period_msec ) () ;int /*<<< orphan*/  (* is_map_loading ) () ;} ;
struct TYPE_11__ {int /*<<< orphan*/  userdata; TYPE_2__ hooks; TYPE_1__ calls; } ;
typedef  TYPE_4__ DeepmindContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*,scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 size_t PITCH ; 
 size_t ROLL ; 
 size_t YAW ; 
 TYPE_6__ cl ; 
 TYPE_4__* FUNC3 () ; 
 int frame_msec ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,double*,double*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9( vec3_t old_angles, usercmd_t *cmd ) {
	DeepmindContext* ctx = FUNC3();
	int		i;
	int eng_frame_msec = ctx->calls.engine_frame_period_msec();
	if ( eng_frame_msec == 0 ) {
		eng_frame_msec = frame_msec;
	}
	// copy the state that the cgame is currently sending
	cmd->weapon = cl.cgameUserCmdValue;

	// send the current server time so the amount of movement
	// can be determined without allowing cheating
	cmd->serverTime = cl.serverTime;

	if (ctx->hooks.get_native_app( ctx->userdata ) != 0) {
		ctx->hooks.set_actions(
				ctx->userdata,
				FUNC1( cl.viewangles[PITCH], old_angles[PITCH] ) / eng_frame_msec,
				FUNC1( cl.viewangles[YAW], old_angles[YAW] ) / eng_frame_msec,
				cmd->forwardmove, cmd->rightmove, cmd->upmove, cmd->buttons );
	}

	double pitch = 0;
	double yaw = 0;
  if (!ctx->calls.is_map_loading()) {
		ctx->hooks.get_actions(
				ctx->userdata,
				&pitch, &yaw,
				&cmd->forwardmove, &cmd->rightmove, &cmd->upmove,
				&cmd->buttons);
	} else {
		cmd->forwardmove = 0;
		cmd->rightmove = 0;
		cmd->upmove = 0;
		cmd->buttons = 0;
	}

	cl.viewangles[ROLL] = 0;
	cl.viewangles[PITCH] = FUNC2( old_angles[PITCH] + pitch * eng_frame_msec );
	cl.viewangles[YAW] = FUNC2( old_angles[YAW] + yaw * eng_frame_msec );

	for (i=0 ; i<3 ; i++) {
		cmd->angles[i] = FUNC0(cl.viewangles[i]);
	}
}