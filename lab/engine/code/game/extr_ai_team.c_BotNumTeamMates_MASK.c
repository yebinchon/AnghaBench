#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bot_state_t ;
struct TYPE_2__ {int maxclients; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ CS_PLAYERS ; 
 char* FUNC1 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 scalar_t__ TEAM_SPECTATOR ; 
 scalar_t__ FUNC2 (char*) ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

int FUNC5(bot_state_t *bs) {
	int i, numplayers;
	char buf[MAX_INFO_STRING];

	numplayers = 0;
	for (i = 0; i < level.maxclients; i++) {
		FUNC4(CS_PLAYERS+i, buf, sizeof(buf));
		//if no config string or no name
		if (!FUNC3(buf) || !FUNC3(FUNC1(buf, "n"))) continue;
		//skip spectators
		if (FUNC2(FUNC1(buf, "t")) == TEAM_SPECTATOR) continue;
		//
		if (FUNC0(bs, i)) {
			numplayers++;
		}
	}
	return numplayers;
}