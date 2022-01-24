#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ atom; scalar_t__ state; int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ xcb_property_notify_event_t ;
struct TYPE_11__ {scalar_t__ length; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
typedef  int uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  win; scalar_t__ mapped; } ;
typedef  TYPE_3__ trayclient ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ XCB_ATOM_WM_CLASS ; 
 int /*<<< orphan*/  XCB_GET_PROPERTY_TYPE_ANY ; 
 scalar_t__ XCB_PROPERTY_NEW_VALUE ; 
 int XEMBED_MAPPED ; 
 size_t _XEMBED_INFO ; 
 scalar_t__* atoms ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  xcb_connection ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(xcb_property_notify_event_t *event) {
    FUNC0("PropertyNotify\n");
    if (event->atom == atoms[_XEMBED_INFO] &&
        event->state == XCB_PROPERTY_NEW_VALUE) {
        /* _XEMBED_INFO property tells us whether a dock client should be mapped or unmapped. */
        FUNC0("xembed_info updated\n");

        trayclient *client = FUNC3(event->window);
        if (!client) {
            FUNC1("PropertyNotify received for unknown window %08x\n", event->window);
            return;
        }

        xcb_get_property_cookie_t xembedc;
        xembedc = FUNC6(xcb_connection,
                                             0,
                                             client->win,
                                             atoms[_XEMBED_INFO],
                                             XCB_GET_PROPERTY_TYPE_ANY,
                                             0,
                                             2 * 32);

        xcb_get_property_reply_t *xembedr = FUNC5(xcb_connection,
                                                                   xembedc,
                                                                   NULL);
        if (xembedr == NULL || xembedr->length == 0) {
            FUNC0("xembed_info unset\n");
            return;
        }

        FUNC0("xembed format = %d, len = %d\n", xembedr->format, xembedr->length);
        uint32_t *xembed = FUNC7(xembedr);
        FUNC0("xembed version = %d\n", xembed[0]);
        FUNC0("xembed flags = %d\n", xembed[1]);
        bool map_it = ((xembed[1] & XEMBED_MAPPED) == XEMBED_MAPPED);
        FUNC0("map state now %d\n", map_it);
        if (client->mapped && !map_it) {
            /* need to unmap the window */
            FUNC9(xcb_connection, client->win);
        } else if (!client->mapped && map_it) {
            /* need to map the window */
            FUNC8(xcb_connection, client->win);
        }
        FUNC2(xembedr);
    } else if (event->atom == XCB_ATOM_WM_CLASS) {
        trayclient *client = FUNC3(event->window);
        if (client) {
            FUNC4(client);
        }
    }
}