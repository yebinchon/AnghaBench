#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_button_press_event_t ;
typedef  int /*<<< orphan*/  orientation_t ;
typedef  scalar_t__ direction_t ;
typedef  int border_t ;
struct TYPE_7__ {scalar_t__ parent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
#define  BORDER_BOTTOM 131 
#define  BORDER_LEFT 130 
#define  BORDER_RIGHT 129 
#define  BORDER_TOP 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ D_DOWN ; 
 scalar_t__ D_LEFT ; 
 scalar_t__ D_RIGHT ; 
 scalar_t__ D_UP ; 
 int /*<<< orphan*/  HORIZ ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  VERT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__**,TYPE_1__**,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static bool FUNC6(Con *con, border_t border, xcb_button_press_event_t *event, bool use_threshold) {
    FUNC0("border = %d, con = %p\n", border, con);
    Con *second = NULL;
    Con *first = con;
    direction_t search_direction;
    switch (border) {
        case BORDER_LEFT:
            search_direction = D_LEFT;
            break;
        case BORDER_RIGHT:
            search_direction = D_RIGHT;
            break;
        case BORDER_TOP:
            search_direction = D_UP;
            break;
        case BORDER_BOTTOM:
            search_direction = D_DOWN;
            break;
    }

    bool res = FUNC3(&first, &second, search_direction, false);
    if (!res) {
        FUNC1("No second container in this direction found.\n");
        return false;
    }

    FUNC2(first != second);
    FUNC2(first->parent == second->parent);

    /* The first container should always be in front of the second container */
    if (search_direction == D_UP || search_direction == D_LEFT) {
        Con *tmp = first;
        first = second;
        second = tmp;
    }

    const orientation_t orientation = ((border == BORDER_LEFT || border == BORDER_RIGHT) ? HORIZ : VERT);

    FUNC4(first, second, orientation, event, use_threshold);

    FUNC0("After resize handler, rendering\n");
    FUNC5();
    return true;
}