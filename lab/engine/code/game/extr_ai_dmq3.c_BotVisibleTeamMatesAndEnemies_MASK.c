#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {int client; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  eye; int /*<<< orphan*/  entitynum; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_9__ {int /*<<< orphan*/  origin; int /*<<< orphan*/  valid; } ;
typedef  TYPE_2__ aas_entityinfo_t ;
struct TYPE_10__ {int maxclients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (float) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ level ; 

void FUNC7(bot_state_t *bs, int *teammates, int *enemies, float range) {
	int i;
	float vis;
	aas_entityinfo_t entinfo;
	vec3_t dir;

	if (teammates)
		*teammates = 0;
	if (enemies)
		*enemies = 0;
	for (i = 0; i < level.maxclients; i++) {
		if (i == bs->client)
			continue;
		//
		FUNC0(i, &entinfo);
		//if this player is active
		if (!entinfo.valid)
			continue;
		//if this player is carrying a flag
		if (!FUNC3(&entinfo))
			continue;
		//if not within range
		FUNC6(entinfo.origin, bs->origin, dir);
		if (FUNC5(dir) > FUNC4(range))
			continue;
		//if the flag carrier is not visible
		vis = FUNC1(bs->entitynum, bs->eye, bs->viewangles, 360, i);
		if (vis <= 0)
			continue;
		//if the flag carrier is on the same team
		if (FUNC2(bs, i)) {
			if (teammates)
				(*teammates)++;
		}
		else {
			if (enemies)
				(*enemies)++;
		}
	}
}