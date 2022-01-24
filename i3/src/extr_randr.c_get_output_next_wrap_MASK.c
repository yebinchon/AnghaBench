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
typedef  scalar_t__ direction_t ;
typedef  int /*<<< orphan*/  Output ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSEST_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ D_DOWN ; 
 scalar_t__ D_LEFT ; 
 scalar_t__ D_RIGHT ; 
 scalar_t__ D_UP ; 
 int /*<<< orphan*/  FARTHEST_OUTPUT ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

Output *FUNC3(direction_t direction, Output *current) {
    Output *best = FUNC1(direction, current, CLOSEST_OUTPUT);
    /* If no output can be found, wrap */
    if (!best) {
        direction_t opposite;
        if (direction == D_RIGHT)
            opposite = D_LEFT;
        else if (direction == D_LEFT)
            opposite = D_RIGHT;
        else if (direction == D_DOWN)
            opposite = D_UP;
        else
            opposite = D_DOWN;
        best = FUNC1(opposite, current, FARTHEST_OUTPUT);
    }
    if (!best)
        best = current;
    FUNC0("current = %s, best = %s\n", FUNC2(current), FUNC2(best));
    return best;
}