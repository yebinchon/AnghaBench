#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ request; } ;
typedef  TYPE_1__ xcb_mapping_notify_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ XCB_MAPPING_KEYBOARD ; 
 scalar_t__ XCB_MAPPING_MODIFIER ; 
 int /*<<< orphan*/  XCB_NUM_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keysyms ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xcb_numlock_mask ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(xcb_mapping_notify_event_t *event) {
    if (event->request != XCB_MAPPING_KEYBOARD &&
        event->request != XCB_MAPPING_MODIFIER)
        return;

    FUNC0("Received mapping_notify for keyboard or modifier mapping, re-grabbing keys\n");
    FUNC5(keysyms, event);

    xcb_numlock_mask = FUNC1(XCB_NUM_LOCK, keysyms);

    FUNC4(conn);
    FUNC3();
    FUNC2(conn);
}