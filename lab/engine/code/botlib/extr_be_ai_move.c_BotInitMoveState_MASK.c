#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int moveflags; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  presencetype; int /*<<< orphan*/  thinktime; int /*<<< orphan*/  client; int /*<<< orphan*/  entitynum; int /*<<< orphan*/  viewoffset; int /*<<< orphan*/  velocity; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_6__ {int or_moveflags; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  presencetype; int /*<<< orphan*/  thinktime; int /*<<< orphan*/  client; int /*<<< orphan*/  entitynum; int /*<<< orphan*/  viewoffset; int /*<<< orphan*/  velocity; int /*<<< orphan*/  origin; } ;
typedef  TYPE_2__ bot_initmove_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int MFL_GRAPPLEPULL ; 
 int MFL_ONGROUND ; 
 int MFL_TELEPORTED ; 
 int MFL_WALK ; 
 int MFL_WATERJUMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(int handle, bot_initmove_t *initmove)
{
	bot_movestate_t *ms;

	ms = FUNC0(handle);
	if (!ms) return;
	FUNC1(initmove->origin, ms->origin);
	FUNC1(initmove->velocity, ms->velocity);
	FUNC1(initmove->viewoffset, ms->viewoffset);
	ms->entitynum = initmove->entitynum;
	ms->client = initmove->client;
	ms->thinktime = initmove->thinktime;
	ms->presencetype = initmove->presencetype;
	FUNC1(initmove->viewangles, ms->viewangles);
	//
	ms->moveflags &= ~MFL_ONGROUND;
	if (initmove->or_moveflags & MFL_ONGROUND) ms->moveflags |= MFL_ONGROUND;
	ms->moveflags &= ~MFL_TELEPORTED;	
	if (initmove->or_moveflags & MFL_TELEPORTED) ms->moveflags |= MFL_TELEPORTED;
	ms->moveflags &= ~MFL_WATERJUMP;
	if (initmove->or_moveflags & MFL_WATERJUMP) ms->moveflags |= MFL_WATERJUMP;
	ms->moveflags &= ~MFL_WALK;
	if (initmove->or_moveflags & MFL_WALK) ms->moveflags |= MFL_WALK;
	ms->moveflags &= ~MFL_GRAPPLEPULL;
	if (initmove->or_moveflags & MFL_GRAPPLEPULL) ms->moveflags |= MFL_GRAPPLEPULL;
}