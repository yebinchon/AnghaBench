#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teammatename ;
typedef  int /*<<< orphan*/  netname ;
struct TYPE_10__ {int /*<<< orphan*/  client; int /*<<< orphan*/  cs; int /*<<< orphan*/  teamleader; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_11__ {int subtype; } ;
typedef  TYPE_2__ bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_AFFIRMATIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAT_TELL ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int MAX_MESSAGE_SIZE ; 
 int MAX_NETNAME ; 
 int /*<<< orphan*/  NETNAME ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
#define  ST_ATTACKER 130 
#define  ST_DEFENDER 129 
#define  ST_ROAMER 128 
 int TEAMTP_ATTACKER ; 
 int TEAMTP_DEFENDER ; 
 int /*<<< orphan*/  VOICECHAT_YES ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(bot_state_t *bs, bot_match_t *match) {
	char netname[MAX_NETNAME];
	char teammatename[MAX_MESSAGE_SIZE];
	int teammate, preference;

	FUNC5(bs->client, netname, sizeof(netname));
	if (FUNC7(netname, bs->teamleader) != 0) return;

	FUNC9(match, NETNAME, teammatename, sizeof(teammatename));
	teammate = FUNC4(teammatename);
	if (teammate < 0) return;

	preference = FUNC1(bs, teammate);
	switch(match->subtype)
	{
		case ST_DEFENDER:
		{
			preference &= ~TEAMTP_ATTACKER;
			preference |= TEAMTP_DEFENDER;
			break;
		}
		case ST_ATTACKER:
		{
			preference &= ~TEAMTP_DEFENDER;
			preference |= TEAMTP_ATTACKER;
			break;
		}
		case ST_ROAMER:
		{
			preference &= ~(TEAMTP_ATTACKER|TEAMTP_DEFENDER);
			break;
		}
	}
	FUNC2(bs, teammate, preference);
	//
	FUNC6(teammate, teammatename, sizeof(teammatename));
	FUNC0(bs, "keepinmind", teammatename, NULL);
	FUNC8(bs->cs, teammate, CHAT_TELL);
	FUNC3(bs, teammate, VOICECHAT_YES);
	FUNC10(bs->client, ACTION_AFFIRMATIVE);
}