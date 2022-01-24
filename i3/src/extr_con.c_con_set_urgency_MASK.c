#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_12__ {int urgent; TYPE_1__* window; int /*<<< orphan*/ * urgency_timer; } ;
struct TYPE_11__ {TYPE_5__ urgent; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* focused ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(Con *con, bool urgent) {
    if (urgent && focused == con) {
        FUNC0("Ignoring urgency flag for current client\n");
        return;
    }

    const bool old_urgent = con->urgent;

    if (con->urgency_timer == NULL) {
        con->urgent = urgent;
    } else
        FUNC0("Discarding urgency WM_HINT because timer is running\n");

    //CLIENT_LOG(con);
    if (con->window) {
        if (con->urgent) {
            FUNC4(&con->window->urgent, NULL);
        } else {
            con->window->urgent.tv_sec = 0;
            con->window->urgent.tv_usec = 0;
        }
    }

    FUNC3(con);

    Con *ws;
    /* Set the urgency flag on the workspace, if a workspace could be found
     * (for dock clients, that is not the case). */
    if ((ws = FUNC2(con)) != NULL)
        FUNC6(ws);

    if (con->urgent != old_urgent) {
        FUNC1("Urgency flag changed to %d\n", con->urgent);
        FUNC5("urgent", con);
    }
}