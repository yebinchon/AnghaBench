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
struct ev_prepare {int dummy; } ;
struct ev_io {int dummy; } ;
typedef  int /*<<< orphan*/  placeholder_state ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/ * restore_conn ; 
 int /*<<< orphan*/  restore_xcb_got_event ; 
 int /*<<< orphan*/  restore_xcb_prepare_cb ; 
 int /*<<< orphan*/ * FUNC12 (int,int) ; 
 int /*<<< orphan*/  state_head ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xcb_prepare ; 
 int /*<<< orphan*/ * xcb_watcher ; 

void FUNC17(void) {
    if (restore_conn != NULL) {
        /* This is not the initial connect, but a reconnect, most likely
         * because our X11 connection was killed (e.g. by a user with xkill. */
        FUNC7(main_loop, xcb_watcher);
        FUNC10(main_loop, xcb_prepare);

        placeholder_state *state;
        while (!FUNC0(&state_head)) {
            state = FUNC1(&state_head);
            FUNC2(&state_head, state, state);
            FUNC11(state);
        }

        /* xcb_disconnect leaks memory in libxcb versions earlier than 1.11,
         * but it’s the right function to call. See
         * https://cgit.freedesktop.org/xcb/libxcb/commit/src/xcb_conn.c?id=4dcbfd77b
         */
        FUNC15(restore_conn);
        FUNC11(xcb_watcher);
        FUNC11(xcb_prepare);
    }

    int screen;
    restore_conn = FUNC13(NULL, &screen);
    if (restore_conn == NULL || FUNC14(restore_conn)) {
        if (restore_conn != NULL) {
            FUNC15(restore_conn);
        }
#ifdef I3_ASAN_ENABLED
        __lsan_do_leak_check();
#endif
        FUNC4(EXIT_FAILURE, "Cannot open display");
    }

    xcb_watcher = FUNC12(1, sizeof(struct ev_io));
    xcb_prepare = FUNC12(1, sizeof(struct ev_prepare));

    FUNC5(xcb_watcher, restore_xcb_got_event, FUNC16(restore_conn), EV_READ);
    FUNC6(main_loop, xcb_watcher);

    FUNC8(xcb_prepare, restore_xcb_prepare_cb);
    FUNC9(main_loop, xcb_prepare);
}