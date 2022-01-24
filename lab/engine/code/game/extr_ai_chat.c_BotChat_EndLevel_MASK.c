#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ lastchat_time; int /*<<< orphan*/  chatto; int /*<<< orphan*/  client; int /*<<< orphan*/  character; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_12__ {int /*<<< orphan*/  integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  CHARACTERISTIC_CHAT_STARTENDLEVEL ; 
 int /*<<< orphan*/  CHAT_ALL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ GT_TOURNAMENT ; 
 scalar_t__ TIME_BETWEENCHATTING ; 
 scalar_t__ FUNC11 () ; 
 TYPE_3__ bot_fastchat ; 
 TYPE_2__ bot_nochat ; 
 scalar_t__ gametype ; 
 int qfalse ; 
 int qtrue ; 
 float FUNC12 () ; 
 float FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

int FUNC15(bot_state_t *bs) {
	char name[32];
	float rnd;

	if (bot_nochat.integer) return qfalse;
	if (FUNC4(bs)) return qfalse;
	if (bs->lastchat_time > FUNC10() - TIME_BETWEENCHATTING) return qfalse;
	// teamplay
	if (FUNC11()) 
	{
#ifdef MISSIONPACK
		if (BotIsFirstInRankings(bs)) {
			trap_EA_Command(bs->client, "vtaunt");
		}
#endif
		return qtrue;
	}
	// don't chat in tournament mode
	if (gametype == GT_TOURNAMENT) return qfalse;
	rnd = FUNC13(bs->character, CHARACTERISTIC_CHAT_STARTENDLEVEL, 0, 1);
	if (!bot_fastchat.integer) {
		if (FUNC12() > rnd) return qfalse;
	}
	if (FUNC7() <= 1) return qfalse;
	//
	if (FUNC2(bs)) {
		FUNC0(bs, "level_end_victory",
				FUNC9(bs->client, name, 32),	// 0
				FUNC8(bs),				// 1
				"[invalid var]",						// 2
				FUNC5(),				// 3
				FUNC6(),							// 4
				NULL);
	}
	else if (FUNC3(bs)) {
		FUNC0(bs, "level_end_lose",
				FUNC9(bs->client, name, 32),	// 0
				FUNC8(bs),				// 1
				FUNC1(),				// 2
				"[invalid var]",						// 3
				FUNC6(),							// 4
				NULL);
	}
	else {
		FUNC0(bs, "level_end",
				FUNC9(bs->client, name, 32),	// 0
				FUNC8(bs),				// 1
				FUNC1(),				// 2
				FUNC5(),				// 3
				FUNC6(),							// 4
				NULL);
	}
	bs->lastchat_time = FUNC10();
	bs->chatto = CHAT_ALL;
	return qtrue;
}