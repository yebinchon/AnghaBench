#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_11__ {float forwardmove; float rightmove; } ;
typedef  TYPE_4__ usercmd_t ;
struct TYPE_13__ {TYPE_3__* ps; TYPE_4__ cmd; } ;
struct TYPE_8__ {int /*<<< orphan*/  normal; } ;
struct TYPE_9__ {TYPE_1__ plane; } ;
struct TYPE_12__ {float* forward; float* right; TYPE_2__ groundTrace; scalar_t__ groundPlane; } ;
struct TYPE_10__ {int pm_flags; int /*<<< orphan*/  velocity; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVERCLIP ; 
 int PMF_GRAPPLE_PULL ; 
 int /*<<< orphan*/  FUNC0 (float*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*) ; 
 float FUNC8 (float*) ; 
 TYPE_6__* pm ; 
 int /*<<< orphan*/  pm_airaccelerate ; 
 TYPE_5__ pml ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC9( void ) {
	int			i;
	vec3_t		wishvel;
	float		fmove, smove;
	vec3_t		wishdir;
	float		wishspeed;
	float		scale;
	usercmd_t	cmd;

	FUNC3();

	fmove = pm->cmd.forwardmove;
	smove = pm->cmd.rightmove;

	cmd = pm->cmd;
	scale = FUNC2( &cmd );

	// set the movementDir so clients can rotate the legs for strafing
	FUNC4();

	// project moves down to flat plane
	pml.forward[2] = 0;
	pml.right[2] = 0;
	FUNC8 (pml.forward);
	FUNC8 (pml.right);

	for ( i = 0 ; i < 2 ; i++ ) {
		wishvel[i] = pml.forward[i]*fmove + pml.right[i]*smove;
	}
	wishvel[2] = 0;

	FUNC7 (wishvel, wishdir);
	wishspeed = FUNC8(wishdir);
	wishspeed *= scale;

	// not on ground, so little effect on velocity
	FUNC0 (wishdir, wishspeed, pm_airaccelerate);

	// we may have a ground plane that is very steep, even
	// though we don't have a groundentity
	// slide along the steep plane
	if ( pml.groundPlane ) {
		FUNC1 (pm->ps->velocity, pml.groundTrace.plane.normal, 
			pm->ps->velocity, OVERCLIP );
	}

#if 0
	//ZOID:  If we are on the grapple, try stair-stepping
	//this allows a player to use the grapple to pull himself
	//over a ledge
	if (pm->ps->pm_flags & PMF_GRAPPLE_PULL)
		PM_StepSlideMove ( qtrue );
	else
		PM_SlideMove ( qtrue );
#endif

	FUNC6 ( qtrue );
}