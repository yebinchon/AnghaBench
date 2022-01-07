
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int posix_spawn_file_actions_t ;
typedef int pid_t ;
typedef int errnum ;


 int EINTR ;
 int EX_SOFTWARE ;
 int O_CLOEXEC ;
 int _exit (int ) ;
 char** build_spawn_env () ;
 int cloexec_mutex ;
 int close (int const) ;
 int dup2 (int const,int const) ;
 int errno ;
 int execvp (char const*,char* const*) ;
 int fork () ;
 int free (char**) ;
 int posix_spawn_file_actions_addclose (int *,int const) ;
 int posix_spawn_file_actions_adddup2 (int *,int const,int const) ;
 int posix_spawn_file_actions_init (int *) ;
 int posix_spawnp (int*,char const*,int *,int *,char* const*,char**) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int read (int,int*,int) ;
 int waitpid (int,int *,int ) ;
 int write (int,int*,int) ;

pid_t h2o_spawnp(const char *cmd, char *const *argv, const int *mapped_fds, int cloexec_mutex_is_locked)
{


    extern int pipe2(int pipefd[2], int flags);





    extern char **environ;
    int pipefds[2] = {-1, -1}, errnum;
    pid_t pid;


    if (pipe2(pipefds, O_CLOEXEC) != 0)
        goto Error;


    if (!cloexec_mutex_is_locked)
        pthread_mutex_lock(&cloexec_mutex);
    if ((pid = fork()) == 0) {

        if (mapped_fds != ((void*)0)) {
            for (; *mapped_fds != -1; mapped_fds += 2) {
                if (mapped_fds[0] != mapped_fds[1]) {
                    if (mapped_fds[1] != -1)
                        dup2(mapped_fds[0], mapped_fds[1]);
                    close(mapped_fds[0]);
                }
            }
        }
        char **env = build_spawn_env();
        if (env != ((void*)0))
            environ = env;
        execvp(cmd, argv);
        errnum = errno;
        write(pipefds[1], &errnum, sizeof(errnum));
        _exit(EX_SOFTWARE);
    }
    if (!cloexec_mutex_is_locked)
        pthread_mutex_unlock(&cloexec_mutex);
    if (pid == -1)
        goto Error;


    close(pipefds[1]);
    pipefds[1] = -1;
    ssize_t rret;
    errnum = 0;
    while ((rret = read(pipefds[0], &errnum, sizeof(errnum))) == -1 && errno == EINTR)
        ;
    if (rret != 0) {

        while (waitpid(pid, ((void*)0), 0) != pid)
            ;
        pid = -1;
        errno = errnum;
        goto Error;
    }


    close(pipefds[0]);
    return pid;

Error:
    errnum = errno;
    if (pipefds[0] != -1)
        close(pipefds[0]);
    if (pipefds[1] != -1)
        close(pipefds[1]);
    errno = errnum;
    return -1;
}
