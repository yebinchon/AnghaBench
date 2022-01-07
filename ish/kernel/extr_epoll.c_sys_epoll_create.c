
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int poll; } ;
struct fd {TYPE_1__ epollfd; } ;
typedef int int_t ;
typedef int fd_t ;


 int O_CLOEXEC_ ;
 int STRACE (char*,int) ;
 int _EINVAL ;
 int _ENOMEM ;
 struct fd* adhoc_fd_create (int *) ;
 int epoll_ops ;
 int f_install (struct fd*,int) ;
 int poll_create () ;

fd_t sys_epoll_create(int_t flags) {
    STRACE("epoll_create(%#x)", flags);
    if (flags & ~(O_CLOEXEC_))
        return _EINVAL;

    struct fd *fd = adhoc_fd_create(&epoll_ops);
    if (fd == ((void*)0))
        return _ENOMEM;
    fd->epollfd.poll = poll_create();
    return f_install(fd, flags);
}
