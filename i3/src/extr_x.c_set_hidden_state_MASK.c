#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int is_hidden; } ;
typedef  TYPE_3__ con_state ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_12__ {TYPE_2__* window; TYPE_1__ frame; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  A__NET_WM_STATE ; 
 int /*<<< orphan*/  A__NET_WM_STATE_HIDDEN ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  conn ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Con *con) {
    if (con->window == NULL) {
        return;
    }

    con_state *state = FUNC2(con->frame.id);
    bool should_be_hidden = FUNC1(con);
    if (should_be_hidden == state->is_hidden)
        return;

    if (should_be_hidden) {
        FUNC0("setting _NET_WM_STATE_HIDDEN for con = %p\n", con);
        FUNC3(conn, con->window->id, A__NET_WM_STATE, A__NET_WM_STATE_HIDDEN);
    } else {
        FUNC0("removing _NET_WM_STATE_HIDDEN for con = %p\n", con);
        FUNC4(conn, con->window->id, A__NET_WM_STATE, A__NET_WM_STATE_HIDDEN);
    }

    state->is_hidden = should_be_hidden;
}