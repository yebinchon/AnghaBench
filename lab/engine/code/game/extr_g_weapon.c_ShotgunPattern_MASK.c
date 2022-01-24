#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {TYPE_1__* client; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_5__ {int /*<<< orphan*/  accuracy_hits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DEFAULT_SHOTGUN_COUNT ; 
 int DEFAULT_SHOTGUN_SPREAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 

void FUNC6( vec3_t origin, vec3_t origin2, int seed, gentity_t *ent ) {
	int			i;
	float		r, u;
	vec3_t		end;
	vec3_t		forward, right, up;
	qboolean	hitClient = qfalse;

	// derive the right and up vectors from the forward vector, because
	// the client won't have any other information
	FUNC5( origin2, forward );
	FUNC1( right, forward );
	FUNC0( forward, right, up );

	// generate the "random" spread pattern
	for ( i = 0 ; i < DEFAULT_SHOTGUN_COUNT ; i++ ) {
		r = FUNC2( &seed ) * DEFAULT_SHOTGUN_SPREAD * 16;
		u = FUNC2( &seed ) * DEFAULT_SHOTGUN_SPREAD * 16;
		FUNC4( origin, 8192 * 16, forward, end);
		FUNC4 (end, r, right, end);
		FUNC4 (end, u, up, end);
		if( FUNC3( origin, end, ent ) && !hitClient ) {
			hitClient = qtrue;
			ent->client->accuracy_hits++;
		}
	}
}