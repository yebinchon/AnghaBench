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
struct TYPE_3__ {scalar_t__ event; } ;
typedef  TYPE_1__ xcb_configure_notify_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ force_xinerama ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ root ; 

__attribute__((used)) static void FUNC2(xcb_configure_notify_event_t *event) {
    if (event->event != root) {
        FUNC0("ConfigureNotify for non-root window 0x%08x, ignoring\n", event->event);
        return;
    }
    FUNC0("ConfigureNotify for root window 0x%08x\n", event->event);

    if (force_xinerama) {
        return;
    }
    FUNC1();
}