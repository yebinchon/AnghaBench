#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* client; } ;
typedef  TYPE_3__ gentity_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_8__ {int /*<<< orphan*/  localClient; } ;
struct TYPE_9__ {TYPE_1__ pers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 int g_entities ; 
 TYPE_5__ g_gametype ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 

void FUNC3(gentity_t *ent)
{
	if(!ent->client->pers.localClient)
	{
		FUNC2(ent-g_entities,
			"print \"The levelshot command must be executed by a local client\n\"");
		return;
	}

	if(!FUNC1(ent))
		return;

	// doesn't work in single player
	if(g_gametype.integer == GT_SINGLE_PLAYER)
	{
		FUNC2(ent-g_entities,
			"print \"Must not be in singleplayer mode for levelshot\n\"" );
		return;
	}

	FUNC0();
	FUNC2(ent-g_entities, "clientLevelShot");
}