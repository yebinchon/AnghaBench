#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int pid_t ;
struct TYPE_7__ {int* data; } ;
typedef  TYPE_1__ ev_cleanup ;
struct TYPE_8__ {int* data; } ;
typedef  TYPE_2__ ev_child ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  nagbar_cleanup ; 
 int /*<<< orphan*/  nagbar_exited ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(pid_t *nagbar_pid, char *argv[]) {
    if (*nagbar_pid != -1) {
        FUNC0("i3-nagbar already running (PID %d), not starting again.\n", *nagbar_pid);
        return;
    }

    *nagbar_pid = FUNC6();
    if (*nagbar_pid == -1) {
        FUNC8("Could not fork()");
        return;
    }

    /* child */
    if (*nagbar_pid == 0)
        FUNC5("i3-nagbar", argv);

    FUNC0("Starting i3-nagbar with PID %d\n", *nagbar_pid);

    /* parent */
    /* install a child watcher */
    ev_child *child = FUNC7(sizeof(ev_child));
    FUNC1(child, &nagbar_exited, *nagbar_pid, 0);
    child->data = nagbar_pid;
    FUNC2(main_loop, child);

    /* install a cleanup watcher (will be called when i3 exits and i3-nagbar is
     * still running) */
    ev_cleanup *cleanup = FUNC7(sizeof(ev_cleanup));
    FUNC3(cleanup, nagbar_cleanup);
    cleanup->data = nagbar_pid;
    FUNC4(main_loop, cleanup);
}