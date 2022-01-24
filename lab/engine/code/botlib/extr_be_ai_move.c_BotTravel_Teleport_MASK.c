#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_11__ {int moveflags; int /*<<< orphan*/  client; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int /*<<< orphan*/  movedir; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {int /*<<< orphan*/  start; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int MFL_SWIMMING ; 
 int MFL_TELEPORTED ; 
 int /*<<< orphan*/  MOVERESULT_SWIMVIEW ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 float FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC6(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t hordir;
	float dist;
	FUNC5( result );

	//if the bot is being teleported
	if (ms->moveflags & MFL_TELEPORTED) return result;

	//walk straight to center of the teleporter
	FUNC4(reach->start, ms->origin, hordir);
	if (!(ms->moveflags & MFL_SWIMMING)) hordir[2] = 0;
	dist = FUNC3(hordir);
	//
	FUNC0(ms, hordir, qtrue, &result);

	if (dist < 30) FUNC1(ms->client, hordir, 200);
	else FUNC1(ms->client, hordir, 400);

	if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;

	FUNC2(hordir, result.movedir);
	return result;
}