#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_12__ {double* normal; } ;
struct TYPE_15__ {int fraction; TYPE_1__ plane; int /*<<< orphan*/  endpos; } ;
typedef  TYPE_4__ trace_t ;
struct TYPE_11__ {int trTime; int /*<<< orphan*/  trBase; int /*<<< orphan*/  trDelta; } ;
struct TYPE_14__ {int eFlags; int time; TYPE_10__ pos; } ;
struct TYPE_13__ {int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_16__ {TYPE_3__ s; TYPE_2__ r; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_17__ {int previousTime; int time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,int,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ,double*) ; 
 int EF_BOUNCE_HALF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 TYPE_6__ level ; 

void FUNC8( gentity_t *ent, trace_t *trace ) {
	vec3_t	velocity;
	float	dot;
	int		hitTime;

	// reflect the velocity on the trace plane
	hitTime = level.previousTime + ( level.time - level.previousTime ) * trace->fraction;
	FUNC0( &ent->s.pos, hitTime, velocity );
	dot = FUNC1( velocity, trace->plane.normal );
	FUNC6( velocity, -2*dot, trace->plane.normal, ent->s.pos.trDelta );

	if ( ent->s.eFlags & EF_BOUNCE_HALF ) {
		FUNC7( ent->s.pos.trDelta, 0.65, ent->s.pos.trDelta );
		// check for stop
		if ( trace->plane.normal[2] > 0.2 && FUNC5( ent->s.pos.trDelta ) < 40 ) {
			FUNC2( ent, trace->endpos );
			ent->s.time = level.time / 4;
			return;
		}
	}

	FUNC3( ent->r.currentOrigin, trace->plane.normal, ent->r.currentOrigin);
	FUNC4( ent->r.currentOrigin, ent->s.pos.trBase );
	ent->s.pos.trTime = level.time;
}