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
typedef  double* vec3_t ;
struct TYPE_6__ {int /*<<< orphan*/  integer; } ;
struct TYPE_4__ {int /*<<< orphan*/  smoke2; } ;
struct TYPE_5__ {TYPE_1__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,double*,int /*<<< orphan*/ ) ; 
 double EXP_JUMP ; 
 double EXP_VELOCITY ; 
 int /*<<< orphan*/  FUNC1 (double*,double*) ; 
 TYPE_3__ cg_blood ; 
 TYPE_2__ cgs ; 
 double FUNC2 () ; 

void FUNC3( vec3_t playerOrigin ) {
	vec3_t	origin, velocity;

	if ( !cg_blood.integer ) {
		return;
	}

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*EXP_VELOCITY;
	velocity[1] = FUNC2()*EXP_VELOCITY;
	velocity[2] = EXP_JUMP + FUNC2()*EXP_VELOCITY;
	FUNC0( origin, velocity, cgs.media.smoke2 );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*EXP_VELOCITY;
	velocity[1] = FUNC2()*EXP_VELOCITY;
	velocity[2] = EXP_JUMP + FUNC2()*EXP_VELOCITY;
	FUNC0( origin, velocity, cgs.media.smoke2 );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*EXP_VELOCITY*1.5;
	velocity[1] = FUNC2()*EXP_VELOCITY*1.5;
	velocity[2] = EXP_JUMP + FUNC2()*EXP_VELOCITY;
	FUNC0( origin, velocity, cgs.media.smoke2 );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*EXP_VELOCITY*2.0;
	velocity[1] = FUNC2()*EXP_VELOCITY*2.0;
	velocity[2] = EXP_JUMP + FUNC2()*EXP_VELOCITY;
	FUNC0( origin, velocity, cgs.media.smoke2 );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*EXP_VELOCITY*2.5;
	velocity[1] = FUNC2()*EXP_VELOCITY*2.5;
	velocity[2] = EXP_JUMP + FUNC2()*EXP_VELOCITY;
	FUNC0( origin, velocity, cgs.media.smoke2 );
}