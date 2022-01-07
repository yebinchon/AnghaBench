
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct timer_spec {TYPE_4__ interval; TYPE_2__ value; } ;
struct TYPE_10__ {int nsec; int sec; } ;
struct TYPE_8__ {int nsec; int sec; } ;
struct itimerspec_ {TYPE_5__ interval; TYPE_3__ value; } ;
struct TYPE_6__ {int timer; } ;
struct fd {int lock; TYPE_1__ timerfd; int * ops; } ;
typedef int int_t ;
typedef int fd_t ;
typedef scalar_t__ addr_t ;


 int STRACE (char*,int ,int,scalar_t__,scalar_t__) ;
 int _EBADF ;
 int _EFAULT ;
 int _EINVAL ;
 struct fd* f_get (int ) ;
 int lock (int *) ;
 int timer_set (int ,struct timer_spec,struct timer_spec*) ;
 int timerfd_ops ;
 int unlock (int *) ;
 scalar_t__ user_get (scalar_t__,struct itimerspec_) ;
 scalar_t__ user_put (scalar_t__,struct itimerspec_) ;

int_t sys_timerfd_settime(fd_t f, int_t flags, addr_t new_value_addr, addr_t old_value_addr) {
    STRACE("timerfd_settime(%d, %d, %#x, %#x)", f, flags, new_value_addr, old_value_addr);
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    if (fd->ops != &timerfd_ops)
        return _EINVAL;
    struct itimerspec_ value;
    if (user_get(new_value_addr, value))
        return _EFAULT;

    struct timer_spec spec = {
        .value.tv_sec = value.value.sec,
        .value.tv_nsec = value.value.nsec,
        .interval.tv_sec = value.interval.sec,
        .interval.tv_nsec = value.interval.nsec,
    };
    struct timer_spec old_spec;
    lock(&fd->lock);
    int err = timer_set(fd->timerfd.timer, spec, &old_spec);
    unlock(&fd->lock);
    if (err < 0)
        return err;

    if (old_value_addr) {
        struct itimerspec_ old_value = {
            .value.sec = old_spec.value.tv_sec,
            .value.nsec = old_spec.value.tv_nsec,
            .interval.sec = old_spec.interval.tv_sec,
            .interval.nsec = old_spec.interval.tv_nsec,
        };
        if (user_put(old_value_addr, old_value))
            return _EFAULT;
    }

    return 0;
}
