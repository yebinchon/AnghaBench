#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int urgent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC3(Con *ws) {
    bool old_flag = ws->urgent;
    ws->urgent = FUNC1(ws);
    FUNC0("Workspace urgency flag changed from %d to %d\n", old_flag, ws->urgent);

    if (old_flag != ws->urgent)
        FUNC2("urgent", ws, NULL);
}