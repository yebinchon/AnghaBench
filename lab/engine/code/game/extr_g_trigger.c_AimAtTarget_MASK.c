#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_9__ {float* origin; float* origin2; } ;
struct TYPE_8__ {int /*<<< orphan*/  absmax; int /*<<< orphan*/  absmin; } ;
struct TYPE_10__ {TYPE_2__ s; int /*<<< orphan*/  target; TYPE_1__ r; } ;
typedef  TYPE_3__ gentity_t ;
struct TYPE_11__ {float value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 float FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float,float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,float*) ; 
 TYPE_4__ g_gravity ; 
 float FUNC6 (float) ; 

void FUNC7( gentity_t *self ) {
	gentity_t	*ent;
	vec3_t		origin;
	float		height, gravity, time, forward;
	float		dist;

	FUNC2( self->r.absmin, self->r.absmax, origin );
	FUNC4 ( origin, 0.5, origin );

	ent = FUNC1( self->target );
	if ( !ent ) {
		FUNC0( self );
		return;
	}

	height = ent->s.origin[2] - origin[2];
	gravity = g_gravity.value;
	time = FUNC6( height / ( .5 * gravity ) );
	if ( !time ) {
		FUNC0( self );
		return;
	}

	// set s.origin2 to the push velocity
	FUNC5 ( ent->s.origin, origin, self->s.origin2 );
	self->s.origin2[2] = 0;
	dist = FUNC3( self->s.origin2);

	forward = dist / time;
	FUNC4( self->s.origin2, forward, self->s.origin2 );

	self->s.origin2[2] = time * gravity;
}