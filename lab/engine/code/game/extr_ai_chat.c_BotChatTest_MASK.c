#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_8__ {size_t client; size_t lastkilledby; size_t lastkilledplayer; int /*<<< orphan*/  cs; int /*<<< orphan*/  botdeathtype; } ;
typedef  TYPE_2__ bot_state_t ;
struct TYPE_9__ {TYPE_1__* client; } ;
struct TYPE_7__ {int /*<<< orphan*/  lasthurt_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAT_ALL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (size_t,char*,int) ; 
 TYPE_3__* g_entities ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 

void FUNC12(bot_state_t *bs) {

	char name[32];
	char *weap;
	int num, i;

	num = FUNC11(bs->cs, "game_enter");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "game_enter",
					FUNC8(bs->client, name, 32),	// 0
					FUNC4(bs),				// 1
					"[invalid var]",						// 2
					"[invalid var]",						// 3
					FUNC3(),							// 4
					NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "game_exit");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "game_exit",
					FUNC8(bs->client, name, 32),	// 0
					FUNC4(bs),				// 1
					"[invalid var]",						// 2
					"[invalid var]",						// 3
					FUNC3(),							// 4
					NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "level_start");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "level_start",
					FUNC8(bs->client, name, 32),	// 0
					NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "level_end_victory");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "level_end_victory",
				FUNC8(bs->client, name, 32),	// 0
				FUNC4(bs),				// 1
				FUNC1(),				// 2
				FUNC2(),				// 3
				FUNC3(),							// 4
				NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "level_end_lose");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "level_end_lose",
				FUNC8(bs->client, name, 32),	// 0
				FUNC4(bs),				// 1
				FUNC1(),				// 2
				FUNC2(),				// 3
				FUNC3(),							// 4
				NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "level_end");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "level_end",
				FUNC8(bs->client, name, 32),	// 0
				FUNC4(bs),				// 1
				FUNC1(),				// 2
				FUNC2(),				// 3
				FUNC3(),							// 4
				NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	FUNC8(bs->lastkilledby, name, sizeof(name));
	num = FUNC11(bs->cs, "death_drown");
	for (i = 0; i < num; i++)
	{
		//
		FUNC0(bs, "death_drown", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_slime");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_slime", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_lava");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_lava", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_cratered");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_cratered", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_suicide");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_suicide", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_telefrag");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_telefrag", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_gauntlet");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_gauntlet",
				name,												// 0
				FUNC6(bs->botdeathtype),		// 1
				NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_rail");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_rail",
				name,												// 0
				FUNC6(bs->botdeathtype),		// 1
				NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_bfg");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_bfg",
				name,												// 0
				FUNC6(bs->botdeathtype),		// 1
				NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_insult");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_insult",
					name,												// 0
					FUNC6(bs->botdeathtype),		// 1
					NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "death_praise");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "death_praise",
					name,												// 0
					FUNC6(bs->botdeathtype),		// 1
					NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	//
	FUNC8(bs->lastkilledplayer, name, 32);
	//
	num = FUNC11(bs->cs, "kill_gauntlet");
	for (i = 0; i < num; i++)
	{
		//
		FUNC0(bs, "kill_gauntlet", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "kill_rail");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "kill_rail", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "kill_telefrag");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "kill_telefrag", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "kill_insult");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "kill_insult", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "kill_praise");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "kill_praise", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "enemy_suicide");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "enemy_suicide", name, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	FUNC7(g_entities[bs->client].client->lasthurt_client, name, sizeof(name));
	weap = FUNC6(g_entities[bs->client].client->lasthurt_client);
	num = FUNC11(bs->cs, "hit_talking");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "hit_talking", name, weap, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "hit_nodeath");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "hit_nodeath", name, weap, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "hit_nokill");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "hit_nokill", name, weap, NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	//
	if (bs->lastkilledplayer == bs->client) {
		FUNC9(name, FUNC4(bs));
	}
	else {
		FUNC8(bs->lastkilledplayer, name, sizeof(name));
	}
	//
	num = FUNC11(bs->cs, "random_misc");
	for (i = 0; i < num; i++)
	{
		//
		FUNC0(bs, "random_misc",
					FUNC4(bs),	// 0
					name,						// 1
					"[invalid var]",			// 2
					"[invalid var]",			// 3
					FUNC3(),				// 4
					FUNC5(),		// 5
					NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
	num = FUNC11(bs->cs, "random_insult");
	for (i = 0; i < num; i++)
	{
		FUNC0(bs, "random_insult",
					FUNC4(bs),	// 0
					name,						// 1
					"[invalid var]",			// 2
					"[invalid var]",			// 3
					FUNC3(),				// 4
					FUNC5(),		// 5
					NULL);
		FUNC10(bs->cs, 0, CHAT_ALL);
	}
}