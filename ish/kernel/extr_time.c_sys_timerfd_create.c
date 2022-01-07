
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timer_callback_t ;
struct TYPE_2__ {int timer; } ;
struct fd {TYPE_1__ timerfd; } ;
typedef scalar_t__ int_t ;
typedef int fd_t ;


 int FIXME (char*,scalar_t__) ;
 scalar_t__ ITIMER_REAL_ ;
 int STRACE (char*,scalar_t__,scalar_t__) ;
 int _EINVAL ;
 int _ENOMEM ;
 struct fd* adhoc_fd_create (int *) ;
 int f_install (struct fd*,scalar_t__) ;
 int timer_new (int ,struct fd*) ;
 scalar_t__ timerfd_callback ;
 int timerfd_ops ;

fd_t sys_timerfd_create(int_t clockid, int_t flags) {
    STRACE("timerfd_create(%d, %#x)", clockid, flags);
    if (clockid != ITIMER_REAL_) {
        FIXME("timerfd %d", clockid);
        return _EINVAL;
    }

    struct fd *fd = adhoc_fd_create(&timerfd_ops);
    if (fd == ((void*)0))
        return _ENOMEM;

    fd->timerfd.timer = timer_new((timer_callback_t) timerfd_callback, fd);
    return f_install(fd, flags);
}
