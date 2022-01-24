#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  orientation_t ;
struct TYPE_3__ {int layout; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  HORIZ ; 
#define  L_DEFAULT 134 
#define  L_DOCKAREA 133 
#define  L_OUTPUT 132 
#define  L_SPLITH 131 
#define  L_SPLITV 130 
#define  L_STACKED 129 
#define  L_TABBED 128 
 int /*<<< orphan*/  VERT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

orientation_t FUNC2(Con *con) {
    switch (con->layout) {
        case L_SPLITV:
        /* stacking containers behave like they are in vertical orientation */
        case L_STACKED:
            return VERT;

        case L_SPLITH:
        /* tabbed containers behave like they are in vertical orientation */
        case L_TABBED:
            return HORIZ;

        case L_DEFAULT:
            FUNC0("Someone called con_orientation() on a con with L_DEFAULT, this is a bug in the code.\n");
            FUNC1(false);

        case L_DOCKAREA:
        case L_OUTPUT:
            FUNC0("con_orientation() called on dockarea/output (%d) container %p\n", con->layout, con);
            FUNC1(false);
    }
    /* should not be reached */
    FUNC1(false);
}