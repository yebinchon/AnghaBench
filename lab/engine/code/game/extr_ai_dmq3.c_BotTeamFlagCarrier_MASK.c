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
struct TYPE_8__ {int client; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_9__ {int /*<<< orphan*/  valid; } ;
typedef  TYPE_2__ aas_entityinfo_t ;
struct TYPE_10__ {int maxclients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__ level ; 

int FUNC3(bot_state_t *bs) {
	int i;
	aas_entityinfo_t entinfo;

	for (i = 0; i < level.maxclients; i++) {
		if (i == bs->client)
			continue;
		//
		FUNC0(i, &entinfo);
		//if this player is active
		if (!entinfo.valid)
			continue;
		//if this player is carrying a flag
		if (!FUNC2(&entinfo))
			continue;
		//if the flag carrier is not on the same team
		if (!FUNC1(bs, i))
			continue;
		//
		return i;
	}
	return -1;
}