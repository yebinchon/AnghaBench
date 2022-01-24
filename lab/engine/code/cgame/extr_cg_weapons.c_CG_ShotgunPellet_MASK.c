#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {int /*<<< orphan*/  normal; } ;
struct TYPE_9__ {int surfaceFlags; size_t entityNum; TYPE_2__ plane; int /*<<< orphan*/  endpos; } ;
typedef  TYPE_3__ trace_t ;
struct TYPE_7__ {scalar_t__ eType; } ;
struct TYPE_10__ {TYPE_1__ currentState; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int CONTENTS_WATER ; 
 scalar_t__ ET_PLAYER ; 
 int /*<<< orphan*/  IMPACTSOUND_DEFAULT ; 
 int /*<<< orphan*/  IMPACTSOUND_METAL ; 
 int /*<<< orphan*/  MASK_SHOT ; 
 int SURF_METALSTEPS ; 
 int SURF_NOIMPACT ; 
 int /*<<< orphan*/  WP_SHOTGUN ; 
 TYPE_5__* cg_entities ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6( vec3_t start, vec3_t end, int skipNum ) {
	trace_t		tr;
	int sourceContentType, destContentType;

	FUNC4( &tr, start, NULL, NULL, end, skipNum, MASK_SHOT );

	sourceContentType = FUNC3( start, 0 );
	destContentType = FUNC3( tr.endpos, 0 );

	// FIXME: should probably move this cruft into CG_BubbleTrail
	if ( sourceContentType == destContentType ) {
		if ( sourceContentType & CONTENTS_WATER ) {
			FUNC0( start, tr.endpos, 32 );
		}
	} else if ( sourceContentType & CONTENTS_WATER ) {
		trace_t trace;

		FUNC5( &trace, end, start, NULL, NULL, 0, CONTENTS_WATER );
		FUNC0( start, trace.endpos, 32 );
	} else if ( destContentType & CONTENTS_WATER ) {
		trace_t trace;

		FUNC5( &trace, start, end, NULL, NULL, 0, CONTENTS_WATER );
		FUNC0( tr.endpos, trace.endpos, 32 );
	}

	if (  tr.surfaceFlags & SURF_NOIMPACT ) {
		return;
	}

	if ( cg_entities[tr.entityNum].currentState.eType == ET_PLAYER ) {
		FUNC1( WP_SHOTGUN, tr.endpos, tr.plane.normal, tr.entityNum );
	} else {
		if ( tr.surfaceFlags & SURF_NOIMPACT ) {
			// SURF_NOIMPACT will not make a flame puff or a mark
			return;
		}
		if ( tr.surfaceFlags & SURF_METALSTEPS ) {
			FUNC2( WP_SHOTGUN, 0, tr.endpos, tr.plane.normal, IMPACTSOUND_METAL );
		} else {
			FUNC2( WP_SHOTGUN, 0, tr.endpos, tr.plane.normal, IMPACTSOUND_DEFAULT );
		}
	}
}