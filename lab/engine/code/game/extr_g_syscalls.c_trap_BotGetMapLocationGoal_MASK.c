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
 int /*<<< orphan*/  BOTLIB_AI_GET_MAP_LOCATION_GOAL ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,void*) ; 

int FUNC1(char *name, void /* struct bot_goal_s */ *goal) {
	return FUNC0( BOTLIB_AI_GET_MAP_LOCATION_GOAL, name, goal );
}