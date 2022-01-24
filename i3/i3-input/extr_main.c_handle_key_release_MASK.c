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
typedef  scalar_t__ xcb_keysym_t ;
struct TYPE_4__ {int detail; int state; } ;
typedef  TYPE_1__ xcb_key_release_event_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 scalar_t__ XK_Mode_switch ; 
 int modeswitch_active ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  symbols ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(void *ignored, xcb_connection_t *conn, xcb_key_release_event_t *event) {
    FUNC0("releasing %d, state raw = %d\n", event->detail, event->state);

    xcb_keysym_t sym = FUNC1(symbols, event, event->state);
    if (sym == XK_Mode_switch) {
        FUNC0("Mode switch disabled\n");
        modeswitch_active = false;
    }

    return 1;
}