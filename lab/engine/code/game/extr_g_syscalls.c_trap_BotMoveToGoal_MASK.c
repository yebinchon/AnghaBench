#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  BOTLIB_AI_MOVE_TO_GOAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int,void*,int) ; 

void FUNC1(void /* struct bot_moveresult_s */ *result, int movestate, void /* struct bot_goal_s */ *goal, int travelflags) {
	FUNC0( BOTLIB_AI_MOVE_TO_GOAL, result, movestate, goal, travelflags );
}