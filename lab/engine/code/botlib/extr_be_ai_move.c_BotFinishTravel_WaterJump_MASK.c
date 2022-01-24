#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_9__ {int moveflags; int* origin; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_10__ {int* movedir; int /*<<< orphan*/  flags; int /*<<< orphan*/  ideal_viewangles; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_11__ {int /*<<< orphan*/  end; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int CONTENTS_LAVA ; 
 int CONTENTS_SLIME ; 
 int CONTENTS_WATER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int MFL_WATERJUMP ; 
 int /*<<< orphan*/  MOVERESULT_MOVEMENTVIEW ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 int FUNC6 () ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC7(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t dir, pnt;
	FUNC5( result );

	//botimport.Print(PRT_MESSAGE, "BotFinishTravel_WaterJump\n");
	//if waterjumping there's nothing to do
	if (ms->moveflags & MFL_WATERJUMP) return result;
	//if not touching any water anymore don't do anything
	//otherwise the bot sometimes keeps jumping?
	FUNC3(ms->origin, pnt);
	pnt[2] -= 32;	//extra for q2dm4 near red armor/mega health
	if (!(FUNC0(pnt) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER))) return result;
	//swim straight to reachability end
	FUNC4(reach->end, ms->origin, dir);
	dir[0] += FUNC6() * 10;
	dir[1] += FUNC6() * 10;
	dir[2] += 70 + FUNC6() * 10;
	//elemantary actions
	FUNC1(ms->client, dir, 400);
	//set the ideal view angles
	FUNC2(dir, result.ideal_viewangles);
	result.flags |= MOVERESULT_MOVEMENTVIEW;
	//
	FUNC3(dir, result.movedir);
	//
	return result;
}