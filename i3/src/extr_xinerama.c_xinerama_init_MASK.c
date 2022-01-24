#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ xcb_xinerama_is_active_reply_t ;
struct TYPE_6__ {int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xcb_xinerama_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(void) {
    if (!FUNC4(conn, &xcb_xinerama_id)->present) {
        FUNC0("Xinerama extension not found, using root output.\n");
        FUNC3(conn);
    } else {
        xcb_xinerama_is_active_reply_t *reply;
        reply = FUNC6(conn, FUNC5(conn), NULL);

        if (reply == NULL || !reply->state) {
            FUNC0("Xinerama is not active (in your X-Server), using root output.\n");
            FUNC3(conn);
        } else
            FUNC2(conn);

        FUNC1(reply);
    }
}