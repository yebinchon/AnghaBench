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
 int /*<<< orphan*/  A_UTF8_STRING ; 
 int /*<<< orphan*/  A__NET_WM_VISIBLE_NAME ; 
 int /*<<< orphan*/  XCB_PROP_MODE_REPLACE ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(xcb_window_t window, const char *name) {
    if (name != NULL) {
        FUNC1(conn, XCB_PROP_MODE_REPLACE, window, A__NET_WM_VISIBLE_NAME, A_UTF8_STRING, 8, FUNC0(name), name);
    } else {
        FUNC2(conn, window, A__NET_WM_VISIBLE_NAME);
    }
}