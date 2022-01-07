
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int cloexec_mutex ;
 scalar_t__ pipe (int*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ set_cloexec (int) ;

int cloexec_pipe(int fds[2])
{


    extern int pipe2(int pipefd[2], int flags);

    return pipe2(fds, O_CLOEXEC);
}
