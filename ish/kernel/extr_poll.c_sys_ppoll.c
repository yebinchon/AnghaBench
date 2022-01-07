
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec_ {int sec; int nsec; } ;
typedef struct timespec_ sigset_t_ ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;


 int _EFAULT ;
 int _EINVAL ;
 int sigmask_set_temp (struct timespec_) ;
 int sys_poll (scalar_t__,int,int) ;
 scalar_t__ user_get (scalar_t__,struct timespec_) ;

dword_t sys_ppoll(addr_t fds, dword_t nfds, addr_t timeout_addr, addr_t sigmask_addr, dword_t sigsetsize) {
    int timeout = -1;
    if (timeout_addr != 0) {
        struct timespec_ timeout_timespec;
        if (user_get(timeout_addr, timeout_timespec))
            return _EFAULT;
        timeout = timeout_timespec.sec * 1000 + timeout_timespec.nsec / 1000000;
    }

    sigset_t_ mask;
    if (sigmask_addr != 0) {
        if (sigsetsize != sizeof(sigset_t_))
            return _EINVAL;
        if (user_get(sigmask_addr, mask))
            return _EFAULT;
        sigmask_set_temp(mask);
    }

    return sys_poll(fds, nfds, timeout);
}
