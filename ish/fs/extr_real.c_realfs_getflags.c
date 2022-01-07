
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;


 int F_GETFL ;
 int errno_map () ;
 int fcntl (int ,int ) ;
 int open_flags_fake_from_real (int) ;

int realfs_getflags(struct fd *fd) {
    int flags = fcntl(fd->real_fd, F_GETFL);
    if (flags < 0)
        return errno_map();
    return open_flags_fake_from_real(flags);
}
