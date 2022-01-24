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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(pid_t *nagbar_pid, bool wait_for_it) {
    if (*nagbar_pid == -1)
        return;

    if (FUNC0(*nagbar_pid, SIGTERM) == -1)
        FUNC2("kill(configerror_nagbar) failed");

    if (!wait_for_it)
        return;

    /* When restarting, we don’t enter the ev main loop anymore and after the
     * exec(), our old pid is no longer watched. So, ev won’t handle SIGCHLD
     * for us and we would end up with a <defunct> process. Therefore we
     * waitpid() here. */
    FUNC1(*nagbar_pid, NULL, 0);
}