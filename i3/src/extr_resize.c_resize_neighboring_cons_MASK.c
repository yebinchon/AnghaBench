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
struct TYPE_7__ {double percent; struct TYPE_7__* parent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 double FUNC3 (TYPE_1__*) ; 

bool FUNC4(Con *first, Con *second, int px, int ppt) {
    FUNC0(px * ppt == 0);

    Con *parent = first->parent;
    double new_first_percent;
    double new_second_percent;
    if (ppt) {
        new_first_percent = first->percent + ((double)ppt / 100.0);
        new_second_percent = second->percent - ((double)ppt / 100.0);
    } else {
        /* Convert px change to change in percentages */
        const double pct = (double)px / (double)FUNC2(first->parent);
        new_first_percent = first->percent + pct;
        new_second_percent = second->percent - pct;
    }
    /* Ensure that no container will be less than 1 pixel in the resizing
     * direction. */
    if (new_first_percent < FUNC3(first) || new_second_percent < FUNC3(second)) {
        return false;
    }

    first->percent = new_first_percent;
    second->percent = new_second_percent;
    FUNC1(parent);
    return true;
}