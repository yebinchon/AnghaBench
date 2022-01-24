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
struct TYPE_3__ {scalar_t__ response_type; int /*<<< orphan*/  state; int /*<<< orphan*/  detail; int /*<<< orphan*/  time; } ;
typedef  TYPE_1__ xcb_key_press_event_t ;
typedef  int /*<<< orphan*/  xcb_generic_event_t ;
typedef  int /*<<< orphan*/  CommandResult ;
typedef  int /*<<< orphan*/  Binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ XCB_KEY_RELEASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  last_timestamp ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(xcb_key_press_event_t *event) {
    const bool key_release = (event->response_type == XCB_KEY_RELEASE);

    last_timestamp = event->time;

    FUNC0("%s %d, state raw = 0x%x\n", (key_release ? "KeyRelease" : "KeyPress"), event->detail, event->state);

    Binding *bind = FUNC2((xcb_generic_event_t *)event);

    /* if we couldn't find a binding, we are done */
    if (bind == NULL)
        return;

    CommandResult *result = FUNC3(bind, NULL);
    FUNC1(result);
}