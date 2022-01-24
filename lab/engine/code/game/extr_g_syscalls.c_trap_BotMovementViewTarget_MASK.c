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
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOTLIB_AI_MOVEMENT_VIEW_TARGET ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(int movestate, void /* struct bot_goal_s */ *goal, int travelflags, float lookahead, vec3_t target) {
	return FUNC1( BOTLIB_AI_MOVEMENT_VIEW_TARGET, movestate, goal, travelflags, FUNC0(lookahead), target );
}