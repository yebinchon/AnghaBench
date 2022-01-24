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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 () ; 
 char* FUNC10 (char*) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (char*) ; 
 int FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (char**,char*,char*,...) ; 
 char** start_argv ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(void) {
    char *tmpdir = FUNC10("TMPDIR");
    if (tmpdir == NULL)
        tmpdir = "/tmp";

    pid_t pid_parent = FUNC11();

    char *filename = NULL;
    int suffix = 0;
    /* Find a unique filename for the backtrace (since the PID of i3 stays the
     * same), so that we don’t overwrite earlier backtraces. */
    do {
        FUNC2(filename);
        FUNC14(&filename, "%s/i3-backtrace.%d.%d.txt", tmpdir, pid_parent, suffix);
        suffix++;
    } while (FUNC12(filename));

    pid_t pid_gdb = FUNC9();
    if (pid_gdb < 0) {
        FUNC0("Failed to fork for GDB\n");
        return -1;
    } else if (pid_gdb == 0) {
        /* child */
        int stdin_pipe[2],
            stdout_pipe[2];

        if (FUNC13(stdin_pipe) == -1) {
            FUNC1("Failed to init stdin_pipe\n");
            return -1;
        }
        if (FUNC13(stdout_pipe) == -1) {
            FUNC1("Failed to init stdout_pipe\n");
            return -1;
        }

        /* close standard streams in case i3 is started from a terminal; gdb
         * needs to run without controlling terminal for it to work properly in
         * this situation */
        FUNC5(STDIN_FILENO);
        FUNC5(STDOUT_FILENO);
        FUNC5(STDERR_FILENO);

        /* We provide pipe file descriptors for stdin/stdout because gdb < 7.5
         * crashes otherwise, see
         * https://sourceware.org/bugzilla/show_bug.cgi?id=14114 */
        FUNC6(stdin_pipe[0], STDIN_FILENO);
        FUNC6(stdout_pipe[1], STDOUT_FILENO);

        char *pid_s, *gdb_log_cmd;
        FUNC14(&pid_s, "%d", pid_parent);
        FUNC14(&gdb_log_cmd, "set logging file %s", filename);

        char *args[] = {
            "gdb",
            start_argv[0],
            "-p",
            pid_s,
            "-batch",
            "-nx",
            "-ex", gdb_log_cmd,
            "-ex", "set logging on",
            "-ex", "bt full",
            "-ex", "quit",
            NULL};
        FUNC7(args[0], args);
        FUNC0("Failed to exec GDB\n");
        FUNC8(1);
    }
    int status = 0;

    FUNC15(pid_gdb, &status, 0);

    /* see if the backtrace was successful or not */
    if (!FUNC4(status) || FUNC3(status) != 0) {
        FUNC0("GDB did not run properly\n");
        return -1;
    } else if (!FUNC12(filename)) {
        FUNC0("GDB executed successfully, but no backtrace was generated\n");
        return -1;
    }
    return 1;
}