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
 int /*<<< orphan*/  BOTLIB_AI_MOVE_IN_DIRECTION ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(int movestate, vec3_t dir, float speed, int type) {
	return FUNC1( BOTLIB_AI_MOVE_IN_DIRECTION, movestate, dir, FUNC0(speed), type );
}