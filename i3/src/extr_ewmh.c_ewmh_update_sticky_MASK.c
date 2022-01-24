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
typedef  int /*<<< orphan*/  xcb_window_t ;

/* Variables and functions */
 int /*<<< orphan*/  A__NET_WM_STATE ; 
 int /*<<< orphan*/  A__NET_WM_STATE_STICKY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(xcb_window_t window, bool sticky) {
    if (sticky) {
        FUNC0("Setting _NET_WM_STATE_STICKY for window = %d.\n", window);
        FUNC1(conn, window, A__NET_WM_STATE, A__NET_WM_STATE_STICKY);
    } else {
        FUNC0("Removing _NET_WM_STATE_STICKY for window = %d.\n", window);
        FUNC2(conn, window, A__NET_WM_STATE, A__NET_WM_STATE_STICKY);
    }
}