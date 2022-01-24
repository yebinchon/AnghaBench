#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xcb_window_t ;
struct TYPE_18__ {scalar_t__ managed_since; int /*<<< orphan*/  id; } ;
struct TYPE_17__ {TYPE_4__* window; } ;
typedef  int /*<<< orphan*/  Match ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ XCB_NONE ; 
 scalar_t__ FUNC1 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  croot ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

Con *FUNC13(Con *con) {
    Match *match;
    Con *nc = FUNC3(croot, con->window, &match);
    if (nc == NULL || nc->window == NULL || nc->window == con->window) {
        FUNC8(con->window);
        return con;
    }
    /* Make sure the placeholder that wants to swallow this window didn't spawn
     * after the window to follow current behavior: adding a placeholder won't
     * swallow windows currently managed. */
    if (nc->window->managed_since > con->window->managed_since) {
        FUNC8(con->window);
        return con;
    }

    if (!FUNC7(nc->window->id)) {
        FUNC0("Uh?! Container without a placeholder, but with a window, has swallowed this managed window?!\n");
    } else {
        FUNC2(nc);
    }
    FUNC10(nc->window);

    xcb_window_t old_frame = FUNC1(con->window, nc);

    FUNC11(nc, con);

    bool moved_workpaces = (FUNC4(nc) != FUNC4(con));

    FUNC5(con, nc);

    /* Destroy the old frame if we had to reframe the container. This needs to be done
     * after rendering in order to prevent the background from flickering in its place. */
    if (old_frame != XCB_NONE) {
        FUNC12(conn, old_frame);
    }

    FUNC8(nc->window);

    if (moved_workpaces) {
        /* If the window is associated with a startup sequence, delete it so
         * child windows won't be created on the old workspace. */
        FUNC9(nc->window);

        FUNC6();
    }

    return nc;
}