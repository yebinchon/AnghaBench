
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int accept (int,struct sockaddr*,int *) ;
 int cloexec_mutex ;
 int close (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ set_cloexec (int) ;

int cloexec_accept(int socket, struct sockaddr *addr, socklen_t *addrlen)
{
    int fd;
    pthread_mutex_lock(&cloexec_mutex);

    if ((fd = accept(socket, addr, addrlen)) == -1)
        goto Exit;
    if (set_cloexec(fd) != 0) {
        close(fd);
        fd = -1;
        goto Exit;
    }

Exit:
    pthread_mutex_unlock(&cloexec_mutex);
    return fd;
}
