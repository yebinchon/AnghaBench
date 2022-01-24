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
typedef  int /*<<< orphan*/  direction_t ;
typedef  int /*<<< orphan*/  Con ;

/* Variables and functions */
 int /*<<< orphan*/  CF_GLOBAL ; 
 int /*<<< orphan*/  CF_OUTPUT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 

bool FUNC4(Con *con, direction_t direction) {
    Con *workspace = FUNC1(con);
    Con *fullscreen = FUNC0(workspace, CF_GLOBAL);
    if (fullscreen == NULL)
        fullscreen = FUNC0(workspace, CF_OUTPUT);

    /* If this container is fullscreen by itself, there's no adjacent container. */
    if (con == fullscreen)
        return false;

    Con *first = con;
    Con *second = NULL;
    bool found_neighbor = FUNC3(&first, &second, direction, false);
    if (!found_neighbor)
        return false;

    /* If we have an adjacent container and nothing is fullscreen, we consider it. */
    if (fullscreen == NULL)
        return true;

    /* For fullscreen containers, only consider the adjacent container if it is also fullscreen. */
    return FUNC2(con, fullscreen) && FUNC2(second, fullscreen);
}