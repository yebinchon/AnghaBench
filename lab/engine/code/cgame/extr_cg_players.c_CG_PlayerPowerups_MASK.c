#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  refEntity_t ;
struct TYPE_12__ {scalar_t__ newAnims; } ;
typedef  TYPE_3__ clientInfo_t ;
struct TYPE_10__ {int powerups; size_t clientNum; int /*<<< orphan*/  number; } ;
struct TYPE_13__ {int /*<<< orphan*/  lerpOrigin; TYPE_1__ currentState; } ;
typedef  TYPE_4__ centity_t ;
struct TYPE_11__ {int /*<<< orphan*/  neutralFlagModel; int /*<<< orphan*/  neutralFlagFlapSkin; int /*<<< orphan*/  blueFlagModel; int /*<<< orphan*/  blueFlagFlapSkin; int /*<<< orphan*/  redFlagModel; int /*<<< orphan*/  redFlagFlapSkin; int /*<<< orphan*/  flightSound; } ;
struct TYPE_14__ {TYPE_2__ media; TYPE_3__* clientinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int PW_BLUEFLAG ; 
 int PW_FLIGHT ; 
 int PW_HASTE ; 
 int PW_NEUTRALFLAG ; 
 int PW_QUAD ; 
 int PW_REDFLAG ; 
 TYPE_5__ cgs ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,double,double,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC6( centity_t *cent, refEntity_t *torso ) {
	int		powerups;
	clientInfo_t	*ci;

	powerups = cent->currentState.powerups;
	if ( !powerups ) {
		return;
	}

	// quad gives a dlight
	if ( powerups & ( 1 << PW_QUAD ) ) {
		FUNC4( cent->lerpOrigin, 200 + (FUNC3()&31), 0.2f, 0.2f, 1 );
	}

	// flight plays a looped sound
	if ( powerups & ( 1 << PW_FLIGHT ) ) {
		FUNC5( cent->currentState.number, cent->lerpOrigin, vec3_origin, cgs.media.flightSound );
	}

	ci = &cgs.clientinfo[ cent->currentState.clientNum ];
	// redflag
	if ( powerups & ( 1 << PW_REDFLAG ) ) {
		if (ci->newAnims) {
			FUNC1( cent, cgs.media.redFlagFlapSkin, torso );
		}
		else {
			FUNC2( cent, cgs.media.redFlagModel );
		}
		FUNC4( cent->lerpOrigin, 200 + (FUNC3()&31), 1.0, 0.2f, 0.2f );
	}

	// blueflag
	if ( powerups & ( 1 << PW_BLUEFLAG ) ) {
		if (ci->newAnims){
			FUNC1( cent, cgs.media.blueFlagFlapSkin, torso );
		}
		else {
			FUNC2( cent, cgs.media.blueFlagModel );
		}
		FUNC4( cent->lerpOrigin, 200 + (FUNC3()&31), 0.2f, 0.2f, 1.0 );
	}

	// neutralflag
	if ( powerups & ( 1 << PW_NEUTRALFLAG ) ) {
		if (ci->newAnims) {
			FUNC1( cent, cgs.media.neutralFlagFlapSkin, torso );
		}
		else {
			FUNC2( cent, cgs.media.neutralFlagModel );
		}
		FUNC4( cent->lerpOrigin, 200 + (FUNC3()&31), 1.0, 1.0, 1.0 );
	}

	// haste leaves smoke trails
	if ( powerups & ( 1 << PW_HASTE ) ) {
		FUNC0( cent );
	}
}