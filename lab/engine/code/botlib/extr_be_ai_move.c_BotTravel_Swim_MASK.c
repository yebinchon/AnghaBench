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
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_11__ {int /*<<< orphan*/  client; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  ideal_viewangles; int /*<<< orphan*/  movedir; } ;
typedef  TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {int /*<<< orphan*/  start; } ;
typedef  TYPE_3__ aas_reachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MOVERESULT_SWIMVIEW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ result ; 

bot_moveresult_t FUNC7(bot_movestate_t *ms, aas_reachability_t *reach)
{
	vec3_t dir;
	FUNC6( result );

	//swim straight to reachability end
	FUNC5(reach->start, ms->origin, dir);
	FUNC4(dir);
	//
	FUNC0(ms, dir, qtrue, &result);
	//elemantary actions
	FUNC1(ms->client, dir, 400);
	//
	FUNC3(dir, result.movedir);
	FUNC2(dir, result.ideal_viewangles);
	result.flags |= MOVERESULT_SWIMVIEW;
	//
	return result;
}