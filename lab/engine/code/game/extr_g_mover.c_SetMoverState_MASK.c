#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int moverState_t ;
struct TYPE_9__ {int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_12__ {int trTime; double trDuration; void* trType; int /*<<< orphan*/  trDelta; int /*<<< orphan*/  trBase; } ;
struct TYPE_8__ {TYPE_7__ pos; } ;
struct TYPE_10__ {int moverState; TYPE_2__ r; TYPE_1__ s; int /*<<< orphan*/  pos2; int /*<<< orphan*/  pos1; } ;
typedef  TYPE_3__ gentity_t ;
struct TYPE_11__ {int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  MOVER_1TO2 131 
#define  MOVER_2TO1 130 
#define  MOVER_POS1 129 
#define  MOVER_POS2 128 
 void* TR_LINEAR_STOP ; 
 void* TR_STATIONARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ level ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void FUNC5( gentity_t *ent, moverState_t moverState, int time ) {
	vec3_t			delta;
	float			f;

	ent->moverState = moverState;

	ent->s.pos.trTime = time;
	switch( moverState ) {
	case MOVER_POS1:
		FUNC1( ent->pos1, ent->s.pos.trBase );
		ent->s.pos.trType = TR_STATIONARY;
		break;
	case MOVER_POS2:
		FUNC1( ent->pos2, ent->s.pos.trBase );
		ent->s.pos.trType = TR_STATIONARY;
		break;
	case MOVER_1TO2:
		FUNC1( ent->pos1, ent->s.pos.trBase );
		FUNC3( ent->pos2, ent->pos1, delta );
		f = 1000.0 / ent->s.pos.trDuration;
		FUNC2( delta, f, ent->s.pos.trDelta );
		ent->s.pos.trType = TR_LINEAR_STOP;
		break;
	case MOVER_2TO1:
		FUNC1( ent->pos2, ent->s.pos.trBase );
		FUNC3( ent->pos1, ent->pos2, delta );
		f = 1000.0 / ent->s.pos.trDuration;
		FUNC2( delta, f, ent->s.pos.trDelta );
		ent->s.pos.trType = TR_LINEAR_STOP;
		break;
	}
	FUNC0( &ent->s.pos, level.time, ent->r.currentOrigin );	
	FUNC4( ent );
}