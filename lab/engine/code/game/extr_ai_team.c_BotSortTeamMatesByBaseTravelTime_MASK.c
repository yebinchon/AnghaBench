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
typedef  int /*<<< orphan*/  bot_goal_t ;
struct TYPE_2__ {int maxclients; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ CS_PLAYERS ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 char* FUNC3 (char*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_INFO_STRING ; 
 scalar_t__ TEAM_RED ; 
 scalar_t__ TEAM_SPECTATOR ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  blueobelisk ; 
 int /*<<< orphan*/  ctf_blueflag ; 
 int /*<<< orphan*/  ctf_redflag ; 
 scalar_t__ gametype ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  redobelisk ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 

int FUNC7(bot_state_t *bs, int *teammates, int maxteammates) {

	int i, j, k, numteammates, traveltime;
	char buf[MAX_INFO_STRING];
	int traveltimes[MAX_CLIENTS];
	bot_goal_t *goal = NULL;

#ifdef MISSIONPACK
	if (gametype == GT_CTF || gametype == GT_1FCTF)
#else
	if (gametype == GT_CTF)
#endif
	{
		if (FUNC2(bs) == TEAM_RED)
			goal = &ctf_redflag;
		else
			goal = &ctf_blueflag;
	}
#ifdef MISSIONPACK
	else {
		if (BotTeam(bs) == TEAM_RED)
			goal = &redobelisk;
		else
			goal = &blueobelisk;
	}
#endif
	numteammates = 0;
	for (i = 0; i < level.maxclients; i++) {
		FUNC6(CS_PLAYERS+i, buf, sizeof(buf));
		//if no config string or no name
		if (!FUNC5(buf) || !FUNC5(FUNC3(buf, "n"))) continue;
		//skip spectators
		if (FUNC4(FUNC3(buf, "t")) == TEAM_SPECTATOR) continue;
		//
		if (FUNC1(bs, i) && goal) {
			//
			traveltime = FUNC0(i, goal);
			//
			for (j = 0; j < numteammates; j++) {
				if (traveltime < traveltimes[j]) {
					for (k = numteammates; k > j; k--) {
						traveltimes[k] = traveltimes[k-1];
						teammates[k] = teammates[k-1];
					}
					break;
				}
			}
			traveltimes[j] = traveltime;
			teammates[j] = i;
			numteammates++;
			if (numteammates >= maxteammates) break;
		}
	}
	return numteammates;
}