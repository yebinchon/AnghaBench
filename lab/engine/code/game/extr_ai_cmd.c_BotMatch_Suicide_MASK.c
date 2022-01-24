#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netname ;
struct TYPE_5__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_AFFIRMATIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  NETNAME ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  VOICECHAT_TAUNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

void FUNC7(bot_state_t *bs, bot_match_t *match) {
	char netname[MAX_MESSAGE_SIZE];
	int client;

	if (!FUNC3()) return;
	//if not addressed to this bot
	if (!FUNC0(bs, match)) return;
	//
	FUNC6(bs->client, "kill");
	//
	FUNC4(match, NETNAME, netname, sizeof(netname));
	client = FUNC2(netname);
	//
	FUNC1(bs, client, VOICECHAT_TAUNT);
	FUNC5(bs->client, ACTION_AFFIRMATIVE);
}