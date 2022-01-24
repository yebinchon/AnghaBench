#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teammate ;
struct TYPE_6__ {char* teamleader; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_7__ {int subtype; } ;
typedef  TYPE_2__ bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (char*) ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  NETNAME ; 
 int ST_I ; 
 int /*<<< orphan*/  TEAMMATE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC5(bot_state_t *bs, bot_match_t *match) {
	int client;
	char teammate[MAX_MESSAGE_SIZE];

	if (!FUNC2()) return;
	//if chats for him or herself
	if (match->subtype & ST_I) {
		//get the team mate that will be the team leader
		FUNC4(match, NETNAME, teammate, sizeof(teammate));
		FUNC3(bs->teamleader, teammate, sizeof(bs->teamleader));
		bs->teamleader[sizeof(bs->teamleader)-1] = '\0';
	}
	//chats for someone else
	else {
		//get the team mate that will be the team leader
		FUNC4(match, TEAMMATE, teammate, sizeof(teammate));
		client = FUNC1(teammate);
		if (client >= 0) FUNC0(client, bs->teamleader, sizeof(bs->teamleader));
	}
}