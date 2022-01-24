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
struct TYPE_3__ {int /*<<< orphan*/  window; int /*<<< orphan*/  sequence; } ;
typedef  TYPE_1__ xcb_map_request_event_t ;
typedef  int /*<<< orphan*/  xcb_get_window_attributes_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(xcb_map_request_event_t *event) {
    xcb_get_window_attributes_cookie_t cookie;

    cookie = FUNC3(conn, event->window);

    FUNC0("window = 0x%08x, serial is %d.\n", event->window, event->sequence);
    FUNC1(event->sequence, -1);

    FUNC2(event->window, cookie, false);
}