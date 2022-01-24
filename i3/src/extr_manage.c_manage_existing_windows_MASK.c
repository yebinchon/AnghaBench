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
typedef  int /*<<< orphan*/  xcb_query_tree_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_window_attributes_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(xcb_window_t root) {
    xcb_query_tree_reply_t *reply;
    int i, len;
    xcb_window_t *children;
    xcb_get_window_attributes_cookie_t *cookies;

    /* Get the tree of windows whose parent is the root window (= all) */
    if ((reply = FUNC7(conn, FUNC4(conn, root), 0)) == NULL)
        return;

    len = FUNC6(reply);
    cookies = FUNC2(len * sizeof(*cookies));

    /* Request the window attributes for every window */
    children = FUNC5(reply);
    for (i = 0; i < len; ++i)
        cookies[i] = FUNC3(conn, children[i]);

    /* Call manage_window with the attributes for every window */
    for (i = 0; i < len; ++i)
        FUNC1(children[i], cookies[i], true);

    FUNC0(reply);
    FUNC0(cookies);
}