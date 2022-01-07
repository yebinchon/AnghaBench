
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;
typedef int int_t ;
typedef int fd_t ;
typedef int dword_t ;


 int STRACE (char*,int ,int ) ;
 int _EBADF ;
 int errno_map () ;
 int shutdown (int ,int ) ;
 struct fd* sock_getfd (int ) ;

int_t sys_shutdown(fd_t sock_fd, dword_t how) {
    STRACE("shutdown(%d, %d)", sock_fd, how);
    struct fd *sock = sock_getfd(sock_fd);
    if (sock == ((void*)0))
        return _EBADF;
    int err = shutdown(sock->real_fd, how);
    if (err < 0)
        return errno_map();
    return 0;
}
