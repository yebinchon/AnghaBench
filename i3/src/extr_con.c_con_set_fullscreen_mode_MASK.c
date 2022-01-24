#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ fullscreen_mode_t ;
struct TYPE_7__ {scalar_t__ fullscreen_mode; TYPE_1__* window; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  A__NET_WM_STATE ; 
 int /*<<< orphan*/  A__NET_WM_STATE_FULLSCREEN ; 
 scalar_t__ CF_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Con *con, fullscreen_mode_t fullscreen_mode) {
    con->fullscreen_mode = fullscreen_mode;

    FUNC0("mode now: %d\n", con->fullscreen_mode);

    /* Send an ipc window "fullscreen_mode" event */
    FUNC1("fullscreen_mode", con);

    /* update _NET_WM_STATE if this container has a window */
    /* TODO: when a window is assigned to a container which is already
     * fullscreened, this state needs to be pushed to the client, too */
    if (con->window == NULL)
        return;

    if (con->fullscreen_mode != CF_NONE) {
        FUNC0("Setting _NET_WM_STATE_FULLSCREEN for con = %p / window = %d.\n", con, con->window->id);
        FUNC2(conn, con->window->id, A__NET_WM_STATE, A__NET_WM_STATE_FULLSCREEN);
    } else {
        FUNC0("Removing _NET_WM_STATE_FULLSCREEN for con = %p / window = %d.\n", con, con->window->id);
        FUNC3(conn, con->window->id, A__NET_WM_STATE, A__NET_WM_STATE_FULLSCREEN);
    }
}