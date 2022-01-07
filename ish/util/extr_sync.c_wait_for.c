
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int lock_t ;
typedef int cond_t ;


 int _EINTR ;
 int _ETIMEDOUT ;
 scalar_t__ is_signal_pending (int *) ;
 int wait_for_ignore_signals (int *,int *,struct timespec*) ;

int wait_for(cond_t *cond, lock_t *lock, struct timespec *timeout) {
    if (is_signal_pending(lock))
        return _EINTR;
    int err = wait_for_ignore_signals(cond, lock, timeout);
    if (err < 0)
        return _ETIMEDOUT;
    if (is_signal_pending(lock))
        return _EINTR;
    return 0;
}
