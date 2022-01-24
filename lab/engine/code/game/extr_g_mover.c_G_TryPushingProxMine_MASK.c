#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
typedef  int qboolean ;
struct TYPE_11__ {int /*<<< orphan*/ * currentOrigin; } ;
struct TYPE_9__ {int /*<<< orphan*/ * trBase; } ;
struct TYPE_10__ {TYPE_1__ pos; } ;
struct TYPE_12__ {TYPE_3__ r; TYPE_2__ s; } ;
typedef  TYPE_4__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/ * vec3_origin ; 

qboolean FUNC7( gentity_t *check, gentity_t *pusher, vec3_t move, vec3_t amove ) {
	vec3_t		forward, right, up;
	vec3_t		org, org2, move2;
	int ret;

	// we need this for pushing things later
	FUNC5 (vec3_origin, amove, org);
	FUNC0 (org, forward, right, up);

	// try moving the contacted entity 
	FUNC3 (check->s.pos.trBase, move, check->s.pos.trBase);

	// figure movement due to the pusher's amove
	FUNC5 (check->s.pos.trBase, pusher->r.currentOrigin, org);
	org2[0] = FUNC1 (org, forward);
	org2[1] = -FUNC1 (org, right);
	org2[2] = FUNC1 (org, up);
	FUNC5 (org2, org, move2);
	FUNC3 (check->s.pos.trBase, move2, check->s.pos.trBase);

	ret = FUNC2( check );
	if (ret) {
		FUNC4( check->s.pos.trBase, check->r.currentOrigin );
		FUNC6 (check);
	}
	return ret;
}