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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int client; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_6__ {int maxclients; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ CS_PLAYERS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 char* FUNC2 (char*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 scalar_t__ TEAM_SPECTATOR ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_2__ level ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 

char *FUNC7(bot_state_t *bs) {
	int i, count;
	char buf[MAX_INFO_STRING];
	int opponents[MAX_CLIENTS], numopponents;
	static char name[32];

	numopponents = 0;
	opponents[0] = 0;
	for (i = 0; i < level.maxclients; i++) {
		if (i == bs->client) continue;
		//
		FUNC6(CS_PLAYERS+i, buf, sizeof(buf));
		//if no config string or no name
		if (!FUNC5(buf) || !FUNC5(FUNC2(buf, "n"))) continue;
		//skip spectators
		if (FUNC3(FUNC2(buf, "t")) == TEAM_SPECTATOR) continue;
		//skip team mates
		if (FUNC0(bs, i)) continue;
		//
		opponents[numopponents] = i;
		numopponents++;
	}
	count = FUNC4() * numopponents;
	for (i = 0; i < numopponents; i++) {
		count--;
		if (count <= 0) {
			FUNC1(opponents[i], name, sizeof(name));
			return name;
		}
	}
	FUNC1(opponents[0], name, sizeof(name));
	return name;
}