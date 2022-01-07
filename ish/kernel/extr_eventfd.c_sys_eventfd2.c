
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_2__ {int val; } ;
struct fd {TYPE_1__ eventfd; } ;
typedef int int_t ;


 int O_CLOEXEC_ ;
 int O_NONBLOCK_ ;
 int STRACE (char*,int ,int) ;
 int _EINVAL ;
 int _ENOMEM ;
 struct fd* adhoc_fd_create (int *) ;
 int eventfd_ops ;
 int f_install (struct fd*,int) ;

int_t sys_eventfd2(uint_t initval, int_t flags) {
    STRACE("eventfd(%d, %#x)", initval, flags);
    if (flags & ~(O_CLOEXEC_|O_NONBLOCK_))
        return _EINVAL;

    struct fd *fd = adhoc_fd_create(&eventfd_ops);
    if (fd == ((void*)0))
        return _ENOMEM;
    fd->eventfd.val = initval;
    return f_install(fd, flags);
}
