#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_17__ {scalar_t__ fixedlegs; scalar_t__ fixedtorso; } ;
typedef  TYPE_6__ clientInfo_t ;
struct TYPE_15__ {int /*<<< orphan*/  trDelta; } ;
struct TYPE_16__ {int legsAnim; int torsoAnim; int eFlags; int* angles2; int clientNum; TYPE_4__ pos; } ;
struct TYPE_13__ {int yawAngle; int pitchAngle; void* pitching; void* yawing; } ;
struct TYPE_12__ {int yawAngle; void* yawing; } ;
struct TYPE_14__ {TYPE_2__ torso; TYPE_1__ legs; } ;
struct TYPE_18__ {TYPE_5__ currentState; TYPE_3__ pe; int /*<<< orphan*/  lerpAngles; } ;
typedef  TYPE_7__ centity_t ;
struct TYPE_20__ {float value; } ;
struct TYPE_19__ {TYPE_6__* clientinfo; } ;

/* Variables and functions */
 int ANIM_TOGGLEBIT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (float,int,int,float,int*,void**) ; 
 float FUNC6 (int*,int*) ; 
 int EF_DEAD ; 
 int LEGS_IDLE ; 
 int MAX_CLIENTS ; 
 size_t PITCH ; 
 size_t ROLL ; 
 int TORSO_STAND ; 
 int TORSO_STAND2 ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*) ; 
 float FUNC9 (int*) ; 
 size_t YAW ; 
 TYPE_9__ cg_swingSpeed ; 
 TYPE_8__ cgs ; 
 void* qtrue ; 

__attribute__((used)) static void FUNC10( centity_t *cent, vec3_t legs[3], vec3_t torso[3], vec3_t head[3] ) {
	vec3_t		legsAngles, torsoAngles, headAngles;
	float		dest;
	static	int	movementOffsets[8] = { 0, 22, 45, -22, 0, 22, -45, -22 };
	vec3_t		velocity;
	float		speed;
	int			dir, clientNum;
	clientInfo_t	*ci;

	FUNC8( cent->lerpAngles, headAngles );
	headAngles[YAW] = FUNC0( headAngles[YAW] );
	FUNC7( legsAngles );
	FUNC7( torsoAngles );

	// --------- yaw -------------

	// allow yaw to drift a bit
	if ( ( cent->currentState.legsAnim & ~ANIM_TOGGLEBIT ) != LEGS_IDLE 
		|| ((cent->currentState.torsoAnim & ~ANIM_TOGGLEBIT) != TORSO_STAND 
		&& (cent->currentState.torsoAnim & ~ANIM_TOGGLEBIT) != TORSO_STAND2)) {
		// if not standing still, always point all in the same direction
		cent->pe.torso.yawing = qtrue;	// always center
		cent->pe.torso.pitching = qtrue;	// always center
		cent->pe.legs.yawing = qtrue;	// always center
	}

	// adjust legs for movement dir
	if ( cent->currentState.eFlags & EF_DEAD ) {
		// don't let dead bodies twitch
		dir = 0;
	} else {
		dir = cent->currentState.angles2[YAW];
		if ( dir < 0 || dir > 7 ) {
			FUNC4( "Bad player movement angle" );
		}
	}
	legsAngles[YAW] = headAngles[YAW] + movementOffsets[ dir ];
	torsoAngles[YAW] = headAngles[YAW] + 0.25 * movementOffsets[ dir ];

	// torso
	FUNC5( torsoAngles[YAW], 25, 90, cg_swingSpeed.value, &cent->pe.torso.yawAngle, &cent->pe.torso.yawing );
	FUNC5( legsAngles[YAW], 40, 90, cg_swingSpeed.value, &cent->pe.legs.yawAngle, &cent->pe.legs.yawing );

	torsoAngles[YAW] = cent->pe.torso.yawAngle;
	legsAngles[YAW] = cent->pe.legs.yawAngle;


	// --------- pitch -------------

	// only show a fraction of the pitch angle in the torso
	if ( headAngles[PITCH] > 180 ) {
		dest = (-360 + headAngles[PITCH]) * 0.75f;
	} else {
		dest = headAngles[PITCH] * 0.75f;
	}
	FUNC5( dest, 15, 30, 0.1f, &cent->pe.torso.pitchAngle, &cent->pe.torso.pitching );
	torsoAngles[PITCH] = cent->pe.torso.pitchAngle;

	//
	clientNum = cent->currentState.clientNum;
	if ( clientNum >= 0 && clientNum < MAX_CLIENTS ) {
		ci = &cgs.clientinfo[ clientNum ];
		if ( ci->fixedtorso ) {
			torsoAngles[PITCH] = 0.0f;
		}
	}

	// --------- roll -------------


	// lean towards the direction of travel
	FUNC8( cent->currentState.pos.trDelta, velocity );
	speed = FUNC9( velocity );
	if ( speed ) {
		vec3_t	axis[3];
		float	side;

		speed *= 0.05f;

		FUNC2( legsAngles, axis );
		side = speed * FUNC6( velocity, axis[1] );
		legsAngles[ROLL] -= side;

		side = speed * FUNC6( velocity, axis[0] );
		legsAngles[PITCH] += side;
	}

	//
	clientNum = cent->currentState.clientNum;
	if ( clientNum >= 0 && clientNum < MAX_CLIENTS ) {
		ci = &cgs.clientinfo[ clientNum ];
		if ( ci->fixedlegs ) {
			legsAngles[YAW] = torsoAngles[YAW];
			legsAngles[PITCH] = 0.0f;
			legsAngles[ROLL] = 0.0f;
		}
	}

	// pain twitch
	FUNC3( cent, torsoAngles );

	// pull the angles back out of the hierarchial chain
	FUNC1( headAngles, torsoAngles, headAngles );
	FUNC1( torsoAngles, legsAngles, torsoAngles );
	FUNC2( legsAngles, legs );
	FUNC2( torsoAngles, torso );
	FUNC2( headAngles, head );
}