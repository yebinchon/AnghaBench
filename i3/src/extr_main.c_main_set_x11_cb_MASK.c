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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  xcb_prepare ; 

void FUNC4(bool enable) {
    FUNC0("Setting main X11 callback to enabled=%d\n", enable);
    if (enable) {
        FUNC2(main_loop, xcb_prepare);
        /* Trigger the watcher explicitly to handle all remaining X11 events.
         * drag_pointer()’s event handler exits in the middle of the loop. */
        FUNC1(main_loop, xcb_prepare, 0);
    } else {
        FUNC3(main_loop, xcb_prepare);
    }
}