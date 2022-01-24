#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
struct TYPE_3__ {int /*<<< orphan*/ * data32; } ;
struct TYPE_4__ {int format; TYPE_1__ data; int /*<<< orphan*/  type; int /*<<< orphan*/  window; int /*<<< orphan*/  response_type; } ;
typedef  TYPE_2__ xcb_client_message_event_t ;
typedef  scalar_t__ kill_window_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_WM_DELETE_WINDOW ; 
 int /*<<< orphan*/  A_WM_PROTOCOLS ; 
 scalar_t__ KILL_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  XCB_CLIENT_MESSAGE ; 
 int /*<<< orphan*/  XCB_CURRENT_TIME ; 
 int /*<<< orphan*/  XCB_EVENT_MASK_NO_EVENT ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void FUNC8(xcb_window_t window, kill_window_t kill_window) {
    /* if this window does not support WM_DELETE_WINDOW, we kill it the hard way */
    if (!FUNC3(window, A_WM_DELETE_WINDOW)) {
        if (kill_window == KILL_WINDOW) {
            FUNC0("Killing specific window 0x%08x\n", window);
            FUNC4(conn, window);
        } else {
            FUNC0("Killing the X11 client which owns window 0x%08x\n", window);
            FUNC6(conn, window);
        }
        return;
    }

    /* Every X11 event is 32 bytes long. Therefore, XCB will copy 32 bytes.
     * In order to properly initialize these bytes, we allocate 32 bytes even
     * though we only need less for an xcb_configure_notify_event_t */
    void *event = FUNC2(32, 1);
    xcb_client_message_event_t *ev = event;

    ev->response_type = XCB_CLIENT_MESSAGE;
    ev->window = window;
    ev->type = A_WM_PROTOCOLS;
    ev->format = 32;
    ev->data.data32[0] = A_WM_DELETE_WINDOW;
    ev->data.data32[1] = XCB_CURRENT_TIME;

    FUNC0("Sending WM_DELETE to the client\n");
    FUNC7(conn, false, window, XCB_EVENT_MASK_NO_EVENT, (char *)ev);
    FUNC5(conn);
    FUNC1(event);
}