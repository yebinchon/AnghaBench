
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;
typedef int dword_t ;


 int F_SETFL ;
 int errno_map () ;
 int fcntl (int ,int ,int ) ;
 int open_flags_real_from_fake (int ) ;

int realfs_setflags(struct fd *fd, dword_t flags) {
    int ret = fcntl(fd->real_fd, F_SETFL, open_flags_real_from_fake(flags));
    if (ret < 0)
        return errno_map();
    return 0;
}
