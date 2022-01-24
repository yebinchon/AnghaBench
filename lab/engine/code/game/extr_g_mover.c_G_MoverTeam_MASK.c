#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_13__ {scalar_t__ trTime; scalar_t__ trType; scalar_t__ trDuration; } ;
struct TYPE_15__ {TYPE_12__ pos; TYPE_12__ apos; } ;
struct TYPE_14__ {int /*<<< orphan*/  currentAngles; int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* reached ) (TYPE_3__*) ;TYPE_2__ s; struct TYPE_16__* teamchain; int /*<<< orphan*/  (* blocked ) (TYPE_3__*,TYPE_3__*) ;TYPE_1__ r; } ;
typedef  TYPE_3__ gentity_t ;
struct TYPE_17__ {scalar_t__ time; scalar_t__ previousTime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 scalar_t__ TR_LINEAR_STOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ level ; 
 int /*<<< orphan*/  pushed ; 
 int /*<<< orphan*/  pushed_p ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void FUNC6( gentity_t *ent ) {
	vec3_t		move, amove;
	gentity_t	*part, *obstacle;
	vec3_t		origin, angles;

	obstacle = NULL;

	// make sure all team slaves can move before committing
	// any moves or calling any think functions
	// if the move is blocked, all moved objects will be backed out
	pushed_p = pushed;
	for (part = ent ; part ; part=part->teamchain) {
		// get current position
		FUNC0( &part->s.pos, level.time, origin );
		FUNC0( &part->s.apos, level.time, angles );
		FUNC2( origin, part->r.currentOrigin, move );
		FUNC2( angles, part->r.currentAngles, amove );
		if ( !FUNC1( part, move, amove, &obstacle ) ) {
			break;	// move was blocked
		}
	}

	if (part) {
		// go back to the previous position
		for ( part = ent ; part ; part = part->teamchain ) {
			part->s.pos.trTime += level.time - level.previousTime;
			part->s.apos.trTime += level.time - level.previousTime;
			FUNC0( &part->s.pos, level.time, part->r.currentOrigin );
			FUNC0( &part->s.apos, level.time, part->r.currentAngles );
			FUNC5( part );
		}

		// if the pusher has a "blocked" function, call it
		if (ent->blocked) {
			ent->blocked( ent, obstacle );
		}
		return;
	}

	// the move succeeded
	for ( part = ent ; part ; part = part->teamchain ) {
		// call the reached function if time is at or past end point
		if ( part->s.pos.trType == TR_LINEAR_STOP ) {
			if ( level.time >= part->s.pos.trTime + part->s.pos.trDuration ) {
				if ( part->reached ) {
					part->reached( part );
				}
			}
		}
	}
}