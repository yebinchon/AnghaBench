#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int xcb_shape_sk_t ;
struct con_state {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_11__ {TYPE_2__* window; TYPE_1__ frame; } ;
struct TYPE_10__ {int shaped; int input_shaped; } ;
typedef  TYPE_3__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*) ; 
#define  XCB_SHAPE_SK_BOUNDING 129 
#define  XCB_SHAPE_SK_INPUT 128 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  conn ; 
 struct con_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(Con *con, xcb_shape_sk_t kind, bool enable) {
    struct con_state *state;
    if ((state = FUNC2(con->frame.id)) == NULL) {
        FUNC0("window state for con %p not found\n", con);
        return;
    }

    switch (kind) {
        case XCB_SHAPE_SK_BOUNDING:
            con->window->shaped = enable;
            break;
        case XCB_SHAPE_SK_INPUT:
            con->window->input_shaped = enable;
            break;
        default:
            FUNC0("Received unknown shape event kind for con %p. This is a bug.\n",
                 con);
            return;
    }

    if (FUNC1(con)) {
        if (enable) {
            FUNC3(con, kind);
        } else {
            FUNC4(con, kind);
        }

        FUNC5(conn);
    }
}