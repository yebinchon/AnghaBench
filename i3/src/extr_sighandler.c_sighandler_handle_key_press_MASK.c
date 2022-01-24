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
typedef  char xcb_keysym_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ xcb_key_press_event_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  backtrace_done ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  keysyms ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xcb_numlock_mask ; 

__attribute__((used)) static void FUNC6(xcb_key_press_event_t *event) {
    uint16_t state = event->state;

    /* Apparently, after activating numlock once, the numlock modifier
     * stays turned on (use xev(1) to verify). So, to resolve useful
     * keysyms, we remove the numlock flag from the event state */
    state &= ~xcb_numlock_mask;

    xcb_keysym_t sym = FUNC5(keysyms, event, state);

    if (sym == 'b') {
        FUNC0("User issued core-dump command.\n");

        /* fork and exec/attach GDB to the parent to get a backtrace in the
         * tmpdir */
        backtrace_done = FUNC2();
        FUNC4();
    } else if (sym == 'r') {
        FUNC3();
        FUNC1(false);
    } else if (sym == 'f') {
        FUNC3();
        FUNC1(true);
    }
}