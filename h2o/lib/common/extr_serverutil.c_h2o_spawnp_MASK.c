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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  posix_spawn_file_actions_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  errnum ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int O_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 () ; 
 int /*<<< orphan*/  cloexec_mutex ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int const) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (char const*,char* const*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char* const*,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int,int*,int) ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int*,int) ; 

pid_t FUNC16(const char *cmd, char *const *argv, const int *mapped_fds, int cloexec_mutex_is_locked)
{
#if defined(__linux__)
#ifndef _GNU_SOURCE
    extern int FUNC17(int pipefd[2], int flags);
#endif

    /* Before glibc 2.24, posix_spawnp of Linux does not return error if the executable does not exist, see
     * https://gist.github.com/kazuho/0c233e6f86d27d6e4f09
     */
    extern char **environ;
    int pipefds[2] = {-1, -1}, errnum;
    pid_t pid;

    /* create pipe, used for sending error codes */
    if (FUNC17(pipefds, O_CLOEXEC) != 0)
        goto Error;

    /* fork */
    if (!cloexec_mutex_is_locked)
        FUNC11(&cloexec_mutex);
    if ((pid = FUNC5()) == 0) {
        /* in child process, map the file descriptors and execute; return the errnum through pipe if exec failed */
        if (mapped_fds != NULL) {
            for (; *mapped_fds != -1; mapped_fds += 2) {
                if (mapped_fds[0] != mapped_fds[1]) {
                    if (mapped_fds[1] != -1)
                        FUNC3(mapped_fds[0], mapped_fds[1]);
                    FUNC2(mapped_fds[0]);
                }
            }
        }
        char **env = FUNC1();
        if (env != NULL)
            environ = env;
        FUNC4(cmd, argv);
        errnum = errno;
        FUNC15(pipefds[1], &errnum, sizeof(errnum));
        FUNC0(EX_SOFTWARE);
    }
    if (!cloexec_mutex_is_locked)
        FUNC12(&cloexec_mutex);
    if (pid == -1)
        goto Error;

    /* parent process */
    FUNC2(pipefds[1]);
    pipefds[1] = -1;
    ssize_t rret;
    errnum = 0;
    while ((rret = FUNC13(pipefds[0], &errnum, sizeof(errnum))) == -1 && errno == EINTR)
        ;
    if (rret != 0) {
        /* spawn failed */
        while (FUNC14(pid, NULL, 0) != pid)
            ;
        pid = -1;
        errno = errnum;
        goto Error;
    }

    /* spawn succeeded */
    FUNC2(pipefds[0]);
    return pid;

Error:
    errnum = errno;
    if (pipefds[0] != -1)
        FUNC2(pipefds[0]);
    if (pipefds[1] != -1)
        FUNC2(pipefds[1]);
    errno = errnum;
    return -1;

#else

    posix_spawn_file_actions_t file_actions;
    pid_t pid;
    extern char **environ;
    char **env = build_spawn_env();
    posix_spawn_file_actions_init(&file_actions);
    if (mapped_fds != NULL) {
        for (; *mapped_fds != -1; mapped_fds += 2) {
            if (mapped_fds[1] != -1)
                posix_spawn_file_actions_adddup2(&file_actions, mapped_fds[0], mapped_fds[1]);
            posix_spawn_file_actions_addclose(&file_actions, mapped_fds[0]);
        }
    }
    if (!cloexec_mutex_is_locked)
        pthread_mutex_lock(&cloexec_mutex);
    errno = posix_spawnp(&pid, cmd, &file_actions, NULL, argv, env != NULL ? env : environ);
    if (!cloexec_mutex_is_locked)
        pthread_mutex_unlock(&cloexec_mutex);
    free(env);
    if (errno != 0)
        return -1;

    return pid;

#endif
}