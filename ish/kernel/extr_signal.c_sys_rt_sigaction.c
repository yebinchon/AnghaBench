
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction_ {int dummy; } ;
typedef int sigset_t_ ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;


 int STRACE (char*,int,scalar_t__,scalar_t__,int) ;
 int _EFAULT ;
 int _EINVAL ;
 int do_sigaction (int,struct sigaction_*,struct sigaction_*) ;
 scalar_t__ user_get (scalar_t__,struct sigaction_) ;
 scalar_t__ user_put (scalar_t__,struct sigaction_) ;

dword_t sys_rt_sigaction(dword_t signum, addr_t action_addr, addr_t oldaction_addr, dword_t sigset_size) {
    if (sigset_size != sizeof(sigset_t_))
        return _EINVAL;
    struct sigaction_ action, oldaction;
    if (action_addr != 0)
        if (user_get(action_addr, action))
            return _EFAULT;
    STRACE("rt_sigaction(%d, 0x%x, 0x%x, %d)", signum, action_addr, oldaction_addr, sigset_size);

    int err = do_sigaction(signum,
            action_addr ? &action : ((void*)0),
            oldaction_addr ? &oldaction : ((void*)0));
    if (err < 0)
        return err;

    if (oldaction_addr != 0)
        if (user_put(oldaction_addr, oldaction))
            return _EFAULT;
    return err;
}
