#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int loopSound; scalar_t__ eType; int constantLight; int /*<<< orphan*/  number; } ;
struct TYPE_7__ {int /*<<< orphan*/  lerpOrigin; TYPE_1__ currentState; } ;
typedef  TYPE_2__ centity_t ;
struct TYPE_8__ {int /*<<< orphan*/ * gameSounds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ ET_SPEAKER ; 
 TYPE_3__ cgs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC4( centity_t *cent ) {

	// update sound origins
	FUNC0( cent );

	// add loop sound
	if ( cent->currentState.loopSound ) {
		if (cent->currentState.eType != ET_SPEAKER) {
			FUNC2( cent->currentState.number, cent->lerpOrigin, vec3_origin, 
				cgs.gameSounds[ cent->currentState.loopSound ] );
		} else {
			FUNC3( cent->currentState.number, cent->lerpOrigin, vec3_origin, 
				cgs.gameSounds[ cent->currentState.loopSound ] );
		}
	}


	// constant light glow
	if(cent->currentState.constantLight)
	{
		int		cl;
		float		i, r, g, b;

		cl = cent->currentState.constantLight;
		r = (float) (cl & 0xFF) / 255.0;
		g = (float) ((cl >> 8) & 0xFF) / 255.0;
		b = (float) ((cl >> 16) & 0xFF) / 255.0;
		i = (float) ((cl >> 24) & 0xFF) * 4.0;
		FUNC1(cent->lerpOrigin, i, r, g, b);
	}

}