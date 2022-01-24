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
struct TYPE_5__ {int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ playerState_t ;
struct TYPE_6__ {int /*<<< orphan*/  areanum; } ;
typedef  TYPE_2__ bot_goal_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TFL_DEFAULT ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(int client, bot_goal_t *goal) {
	playerState_t ps;
	int areanum;

	if (FUNC0(client, &ps)) {
		areanum = FUNC1(ps.origin);
	} else {
		areanum = 0;
	}

	if (!areanum) return 1;
	return FUNC2(areanum, ps.origin, goal->areanum, TFL_DEFAULT);
}