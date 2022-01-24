#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_8__ {float x; double w; int /*<<< orphan*/  h; int /*<<< orphan*/  y; } ;
typedef  TYPE_3__ rectDef_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_9__ {float damageTime; float time; float damageX; int headStartYaw; int headEndYaw; int headEndPitch; scalar_t__ headStartTime; scalar_t__ headEndTime; int headStartPitch; TYPE_2__* snap; } ;
struct TYPE_6__ {int /*<<< orphan*/  clientNum; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 float DAMAGE_TIME ; 
 int M_PI ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 size_t YAW ; 
 TYPE_4__ cg ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(rectDef_t *rect, qboolean draw2D) {
	vec3_t		angles;
	float		size, stretch;
	float		frac;
	float		x = rect->x;

	FUNC1( angles );

	if ( cg.damageTime && cg.time - cg.damageTime < DAMAGE_TIME ) {
		frac = (float)(cg.time - cg.damageTime ) / DAMAGE_TIME;
		size = rect->w * 1.25 * ( 1.5 - frac * 0.5 );

		stretch = size - rect->w * 1.25;
		// kick in the direction of damage
		x -= stretch * 0.5 + cg.damageX * stretch * 0.5;

		cg.headStartYaw = 180 + cg.damageX * 45;

		cg.headEndYaw = 180 + 20 * FUNC2( FUNC3()*M_PI );
		cg.headEndPitch = 5 * FUNC2( FUNC3()*M_PI );

		cg.headStartTime = cg.time;
		cg.headEndTime = cg.time + 100 + FUNC4() * 2000;
	} else {
		if ( cg.time >= cg.headEndTime ) {
			// select a new head angle
			cg.headStartYaw = cg.headEndYaw;
			cg.headStartPitch = cg.headEndPitch;
			cg.headStartTime = cg.headEndTime;
			cg.headEndTime = cg.time + 100 + FUNC4() * 2000;

			cg.headEndYaw = 180 + 20 * FUNC2( FUNC3()*M_PI );
			cg.headEndPitch = 5 * FUNC2( FUNC3()*M_PI );
		}
	}

	// if the server was frozen for a while we may have a bad head start time
	if ( cg.headStartTime > cg.time ) {
		cg.headStartTime = cg.time;
	}

	frac = ( cg.time - cg.headStartTime ) / (float)( cg.headEndTime - cg.headStartTime );
	frac = frac * frac * ( 3 - 2 * frac );
	angles[YAW] = cg.headStartYaw + ( cg.headEndYaw - cg.headStartYaw ) * frac;
	angles[PITCH] = cg.headStartPitch + ( cg.headEndPitch - cg.headStartPitch ) * frac;

	FUNC0( x, rect->y, rect->w, rect->h, cg.snap->ps.clientNum, angles );
}