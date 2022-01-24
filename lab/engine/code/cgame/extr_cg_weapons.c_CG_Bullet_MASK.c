#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {int /*<<< orphan*/  endpos; } ;
typedef  TYPE_1__ trace_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_5__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CONTENTS_WATER ; 
 int /*<<< orphan*/  IMPACTSOUND_DEFAULT ; 
 int /*<<< orphan*/  WP_MACHINEGUN ; 
 TYPE_3__ cg_tracerChance ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC8( vec3_t end, int sourceEntityNum, vec3_t normal, qboolean flesh, int fleshEntityNum ) {
	trace_t trace;
	int sourceContentType, destContentType;
	vec3_t		start;

	// if the shooter is currently valid, calc a source point and possibly
	// do trail effects
	if ( sourceEntityNum >= 0 && cg_tracerChance.value > 0 ) {
		if ( FUNC2( sourceEntityNum, start ) ) {
			sourceContentType = FUNC4( start, 0 );
			destContentType = FUNC4( end, 0 );

			// do a complete bubble trail if necessary
			if ( ( sourceContentType == destContentType ) && ( sourceContentType & CONTENTS_WATER ) ) {
				FUNC1( start, end, 32 );
			}
			// bubble trail from water into air
			else if ( ( sourceContentType & CONTENTS_WATER ) ) {
				FUNC7( &trace, end, start, NULL, NULL, 0, CONTENTS_WATER );
				FUNC1( start, trace.endpos, 32 );
			}
			// bubble trail from air into water
			else if ( ( destContentType & CONTENTS_WATER ) ) {
				FUNC7( &trace, start, end, NULL, NULL, 0, CONTENTS_WATER );
				FUNC1( trace.endpos, end, 32 );
			}

			// draw a tracer
			if ( FUNC6() < cg_tracerChance.value ) {
				FUNC5( start, end );
			}
		}
	}

	// impact splash and mark
	if ( flesh ) {
		FUNC0( end, fleshEntityNum );
	} else {
		FUNC3( WP_MACHINEGUN, 0, end, normal, IMPACTSOUND_DEFAULT );
	}

}