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
typedef  int /*<<< orphan*/  name ;
struct TYPE_10__ {scalar_t__ lastchat_time; scalar_t__ ltgtype; double thinktime; scalar_t__ lastkilledplayer; scalar_t__ client; int /*<<< orphan*/  chatto; int /*<<< orphan*/  character; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_12__ {int /*<<< orphan*/  integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  CHARACTERISTIC_CHAT_MISC ; 
 int /*<<< orphan*/  CHARACTERISTIC_CHAT_RANDOM ; 
 int /*<<< orphan*/  CHAT_ALL ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ GT_TOURNAMENT ; 
 scalar_t__ LTG_RUSHBASE ; 
 scalar_t__ LTG_TEAMACCOMPANY ; 
 scalar_t__ LTG_TEAMHELP ; 
 scalar_t__ TIME_BETWEENCHATTING ; 
 scalar_t__ FUNC10 () ; 
 TYPE_3__ bot_fastchat ; 
 TYPE_2__ bot_nochat ; 
 scalar_t__ gametype ; 
 int qfalse ; 
 int qtrue ; 
 double FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 double FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char*) ; 

int FUNC15(bot_state_t *bs) {
	float rnd;
	char name[32];

	if (bot_nochat.integer) return qfalse;
	if (FUNC1(bs)) return qfalse;
	if (bs->lastchat_time > FUNC9() - TIME_BETWEENCHATTING) return qfalse;
	// don't chat in tournament mode
	if (gametype == GT_TOURNAMENT) return qfalse;
	//don't chat when doing something important :)
	if (bs->ltgtype == LTG_TEAMHELP ||
		bs->ltgtype == LTG_TEAMACCOMPANY ||
		bs->ltgtype == LTG_RUSHBASE) return qfalse;
	//
	rnd = FUNC13(bs->character, CHARACTERISTIC_CHAT_RANDOM, 0, 1);
	if (FUNC11() > bs->thinktime * 0.1) return qfalse;
	if (!bot_fastchat.integer) {
		if (FUNC11() > rnd) return qfalse;
		if (FUNC11() > 0.25) return qfalse;
	}
	if (FUNC3() <= 1) return qfalse;
	//
	if (!FUNC6(bs)) return qfalse;
	//
	if (FUNC7(bs)) return qfalse;
	//
	if (bs->lastkilledplayer == bs->client) {
		FUNC12(name, FUNC4(bs));
	}
	else {
		FUNC8(bs->lastkilledplayer, name, sizeof(name));
	}
	if (FUNC10()) {
#ifdef MISSIONPACK
		trap_EA_Command(bs->client, "vtaunt");
#endif
		return qfalse;			// don't wait
	}
	//
	if (FUNC11() < FUNC13(bs->character, CHARACTERISTIC_CHAT_MISC, 0, 1)) {
		FUNC0(bs, "random_misc",
					FUNC4(bs),	// 0
					name,						// 1
					"[invalid var]",			// 2
					"[invalid var]",			// 3
					FUNC2(),				// 4
					FUNC5(),		// 5
					NULL);
	}
	else {
		FUNC0(bs, "random_insult",
					FUNC4(bs),	// 0
					name,						// 1
					"[invalid var]",			// 2
					"[invalid var]",			// 3
					FUNC2(),				// 4
					FUNC5(),		// 5
					NULL);
	}
	bs->lastchat_time = FUNC9();
	bs->chatto = CHAT_ALL;
	return qtrue;
}