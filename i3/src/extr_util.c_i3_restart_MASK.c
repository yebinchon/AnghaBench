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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_REASON_RESTART ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  command_error_nagbar_pid ; 
 int /*<<< orphan*/  config_error_nagbar_pid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * start_argv ; 
 char* FUNC7 () ; 

void FUNC8(bool forget_layout) {
    char *restart_filename = forget_layout ? NULL : FUNC7();

    FUNC5(&config_error_nagbar_pid, true);
    FUNC5(&command_error_nagbar_pid, true);

    FUNC6();

    FUNC4(SHUTDOWN_REASON_RESTART, -1);

    FUNC0("restarting \"%s\"...\n", start_argv[0]);
    /* make sure -a is in the argument list or add it */
    start_argv = FUNC1(start_argv, "-a", NULL, NULL);

    /* make debuglog-on persist */
    if (FUNC3()) {
        start_argv = FUNC1(start_argv, "-d", "all", NULL);
    }

    /* replace -r <file> so that the layout is restored */
    if (restart_filename != NULL) {
        start_argv = FUNC1(start_argv, "--restart", restart_filename, "-r");
    }

    FUNC2(start_argv[0], start_argv);

    /* not reached */
}