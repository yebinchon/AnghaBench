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
struct TYPE_5__ {int /*<<< orphan*/  subteam; int /*<<< orphan*/  cs; } ;
typedef  TYPE_1__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHAT_TELL ; 
 int FUNC2 (char*) ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  NETNAME ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

void FUNC8(bot_state_t *bs, bot_match_t *match) {
	char netname[MAX_MESSAGE_SIZE];
	int client;

	if (!FUNC3()) return;
	//if not addressed to this bot
	if (!FUNC1(bs, match)) return;
	//
	if (FUNC5(bs->subteam))
	{
		FUNC0(bs, "leftteam", bs->subteam, NULL);
		FUNC7(match, NETNAME, netname, sizeof(netname));
		client = FUNC2(netname);
		FUNC6(bs->cs, client, CHAT_TELL);
	} //end if
	FUNC4(bs->subteam, "");
}