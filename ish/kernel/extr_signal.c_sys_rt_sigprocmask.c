
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sighand {int lock; } ;
typedef scalar_t__ sigset_t_ ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;
struct TYPE_2__ {struct sighand* sighand; int blocked; } ;


 int SIG_BLOCK_ ;
 int SIG_SETMASK_ ;
 int SIG_UNBLOCK_ ;
 int STRACE (char*,char*,long long,scalar_t__,int) ;
 int _EFAULT ;
 int _EINVAL ;
 TYPE_1__* current ;
 int do_sigprocmask (int,scalar_t__) ;
 int lock (int *) ;
 int unlock (int *) ;
 scalar_t__ user_get (scalar_t__,scalar_t__) ;
 scalar_t__ user_put (scalar_t__,int ) ;

dword_t sys_rt_sigprocmask(dword_t how, addr_t set_addr, addr_t oldset_addr, dword_t size) {
    if (size != sizeof(sigset_t_))
        return _EINVAL;

    sigset_t_ set;
    if (set_addr != 0)
        if (user_get(set_addr, set))
            return _EFAULT;
    STRACE("rt_sigprocmask(%s, %#llx, %#x, %d)",
            how == SIG_BLOCK_ ? "SIG_BLOCK" :
            how == SIG_UNBLOCK_ ? "SIG_UNBLOCK" :
            how == SIG_SETMASK_ ? "SIG_SETMASK" : "??",
            set_addr != 0 ? (long long) set : -1, oldset_addr, size);

    if (oldset_addr != 0)
        if (user_put(oldset_addr, current->blocked))
            return _EFAULT;
    if (set_addr != 0) {
        struct sighand *sighand = current->sighand;
        lock(&sighand->lock);
        int err = do_sigprocmask(how, set);
        unlock(&sighand->lock);
        if (err < 0)
            return err;
    }
    return 0;
}
