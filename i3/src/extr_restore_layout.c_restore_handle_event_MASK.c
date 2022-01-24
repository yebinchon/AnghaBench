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
typedef  int /*<<< orphan*/  xcb_generic_event_t ;
struct TYPE_3__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ xcb_expose_event_t ;
typedef  int /*<<< orphan*/  xcb_configure_notify_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  XCB_CONFIGURE_NOTIFY 129 
#define  XCB_EXPOSE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(int type, xcb_generic_event_t *event) {
    switch (type) {
        case XCB_EXPOSE:
            if (((xcb_expose_event_t *)event)->count == 0) {
                FUNC2((xcb_expose_event_t *)event);
            }

            break;
        case XCB_CONFIGURE_NOTIFY:
            FUNC1((xcb_configure_notify_event_t *)event);
            break;
        default:
            FUNC0("Received unhandled X11 event of type %d\n", type);
            break;
    }
}