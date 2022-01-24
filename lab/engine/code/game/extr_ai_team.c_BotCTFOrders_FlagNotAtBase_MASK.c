#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teammates ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_8__ {int ctfstrategy; int numteammates; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int) ; 
 int CTFS_AGRESSIVE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int MAX_CLIENTS ; 
 int MAX_NETNAME ; 
 int /*<<< orphan*/  VOICECHAT_DEFEND ; 
 int /*<<< orphan*/  VOICECHAT_GETFLAG ; 

void FUNC6(bot_state_t *bs) {
	int numteammates, defenders, attackers, i;
	int teammates[MAX_CLIENTS];
	char name[MAX_NETNAME];

	numteammates = FUNC3(bs, teammates, sizeof(teammates));
	FUNC4(bs, teammates, numteammates);
	//passive strategy
	if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {
		//different orders based on the number of team mates
		switch(bs->numteammates) {
			case 1: break;
			case 2:
			{
				// keep one near the base for when the flag is returned
				FUNC5(teammates[0], name, sizeof(name));
				FUNC0(bs, "cmd_defendbase", name, NULL);
				FUNC1(bs, teammates[0]);
				FUNC2(bs, teammates[0], VOICECHAT_DEFEND);
				//
				FUNC5(teammates[1], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[1]);
				FUNC2(bs, teammates[1], VOICECHAT_GETFLAG);
				break;
			}
			case 3:
			{
				//keep one near the base for when the flag is returned
				FUNC5(teammates[0], name, sizeof(name));
				FUNC0(bs, "cmd_defendbase", name, NULL);
				FUNC1(bs, teammates[0]);
				FUNC2(bs, teammates[0], VOICECHAT_DEFEND);
				//the other two get the flag
				FUNC5(teammates[1], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[1]);
				FUNC2(bs, teammates[1], VOICECHAT_GETFLAG);
				//
				FUNC5(teammates[2], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[2]);
				FUNC2(bs, teammates[2], VOICECHAT_GETFLAG);
				break;
			}
			default:
			{
				//keep some people near the base for when the flag is returned
				defenders = (int) (float) numteammates * 0.3 + 0.5;
				if (defenders > 3) defenders = 3;
				attackers = (int) (float) numteammates * 0.6 + 0.5;
				if (attackers > 6) attackers = 6;
				for (i = 0; i < defenders; i++) {
					//
					FUNC5(teammates[i], name, sizeof(name));
					FUNC0(bs, "cmd_defendbase", name, NULL);
					FUNC1(bs, teammates[i]);
					FUNC2(bs, teammates[i], VOICECHAT_DEFEND);
				}
				for (i = 0; i < attackers; i++) {
					//
					FUNC5(teammates[numteammates - i - 1], name, sizeof(name));
					FUNC0(bs, "cmd_getflag", name, NULL);
					FUNC1(bs, teammates[numteammates - i - 1]);
					FUNC2(bs, teammates[0], VOICECHAT_GETFLAG);
				}
				//
				break;
			}
		}
	}
	else {
		//different orders based on the number of team mates
		switch(bs->numteammates) {
			case 1: break;
			case 2:
			{
				//both will go for the enemy flag
				FUNC5(teammates[0], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[0]);
				FUNC2(bs, teammates[0], VOICECHAT_GETFLAG);
				//
				FUNC5(teammates[1], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[1]);
				FUNC2(bs, teammates[1], VOICECHAT_GETFLAG);
				break;
			}
			case 3:
			{
				//everyone go for the flag
				FUNC5(teammates[0], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[0]);
				FUNC2(bs, teammates[0], VOICECHAT_GETFLAG);
				//
				FUNC5(teammates[1], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[1]);
				FUNC2(bs, teammates[1], VOICECHAT_GETFLAG);
				//
				FUNC5(teammates[2], name, sizeof(name));
				FUNC0(bs, "cmd_getflag", name, NULL);
				FUNC1(bs, teammates[2]);
				FUNC2(bs, teammates[2], VOICECHAT_GETFLAG);
				break;
			}
			default:
			{
				//keep some people near the base for when the flag is returned
				defenders = (int) (float) numteammates * 0.2 + 0.5;
				if (defenders > 2) defenders = 2;
				attackers = (int) (float) numteammates * 0.7 + 0.5;
				if (attackers > 7) attackers = 7;
				for (i = 0; i < defenders; i++) {
					//
					FUNC5(teammates[i], name, sizeof(name));
					FUNC0(bs, "cmd_defendbase", name, NULL);
					FUNC1(bs, teammates[i]);
					FUNC2(bs, teammates[i], VOICECHAT_DEFEND);
				}
				for (i = 0; i < attackers; i++) {
					//
					FUNC5(teammates[numteammates - i - 1], name, sizeof(name));
					FUNC0(bs, "cmd_getflag", name, NULL);
					FUNC1(bs, teammates[numteammates - i - 1]);
					FUNC2(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
				}
				//
				break;
			}
		}
	}
}