
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int DLOG (char*) ;
 int ELOG (char*) ;
 int FREE (char*) ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int close (int ) ;
 int dup2 (int,int ) ;
 int execvp (char*,char**) ;
 int exit (int) ;
 scalar_t__ fork () ;
 char* getenv (char*) ;
 scalar_t__ getpid () ;
 scalar_t__ path_exists (char*) ;
 int pipe (int*) ;
 int sasprintf (char**,char*,char*,...) ;
 char** start_argv ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int sighandler_backtrace(void) {
    char *tmpdir = getenv("TMPDIR");
    if (tmpdir == ((void*)0))
        tmpdir = "/tmp";

    pid_t pid_parent = getpid();

    char *filename = ((void*)0);
    int suffix = 0;


    do {
        FREE(filename);
        sasprintf(&filename, "%s/i3-backtrace.%d.%d.txt", tmpdir, pid_parent, suffix);
        suffix++;
    } while (path_exists(filename));

    pid_t pid_gdb = fork();
    if (pid_gdb < 0) {
        DLOG("Failed to fork for GDB\n");
        return -1;
    } else if (pid_gdb == 0) {

        int stdin_pipe[2],
            stdout_pipe[2];

        if (pipe(stdin_pipe) == -1) {
            ELOG("Failed to init stdin_pipe\n");
            return -1;
        }
        if (pipe(stdout_pipe) == -1) {
            ELOG("Failed to init stdout_pipe\n");
            return -1;
        }




        close(STDIN_FILENO);
        close(STDOUT_FILENO);
        close(STDERR_FILENO);




        dup2(stdin_pipe[0], STDIN_FILENO);
        dup2(stdout_pipe[1], STDOUT_FILENO);

        char *pid_s, *gdb_log_cmd;
        sasprintf(&pid_s, "%d", pid_parent);
        sasprintf(&gdb_log_cmd, "set logging file %s", filename);

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
            ((void*)0)};
        execvp(args[0], args);
        DLOG("Failed to exec GDB\n");
        exit(1);
    }
    int status = 0;

    waitpid(pid_gdb, &status, 0);


    if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
        DLOG("GDB did not run properly\n");
        return -1;
    } else if (!path_exists(filename)) {
        DLOG("GDB executed successfully, but no backtrace was generated\n");
        return -1;
    }
    return 1;
}
