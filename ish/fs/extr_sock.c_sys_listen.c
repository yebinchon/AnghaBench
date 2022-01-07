
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;
typedef int int_t ;
typedef int fd_t ;


 int STRACE (char*,int ,int) ;
 int _EBADF ;
 int errno_map () ;
 int listen (int ,int) ;
 struct fd* sock_getfd (int ) ;
 int sockrestart_begin_listen (struct fd*) ;

int_t sys_listen(fd_t sock_fd, int_t backlog) {
    STRACE("listen(%d, %d)", sock_fd, backlog);
    struct fd *sock = sock_getfd(sock_fd);
    if (sock == ((void*)0))
        return _EBADF;
    int err = listen(sock->real_fd, backlog);
    if (err < 0)
        return errno_map();
    sockrestart_begin_listen(sock);
    return err;
}
