
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
typedef scalar_t__ sigset_t_ ;
typedef scalar_t__ int_t ;
typedef int addr_t ;
struct TYPE_4__ {long long pid; TYPE_1__* sighand; int pause; } ;
struct TYPE_3__ {int lock; } ;


 int STRACE (char*,long long) ;
 scalar_t__ _EFAULT ;
 scalar_t__ _EINTR ;
 scalar_t__ _EINVAL ;
 TYPE_2__* current ;
 int lock (int *) ;
 int sigmask_set_temp_unlocked (scalar_t__) ;
 int unlock (int *) ;
 scalar_t__ user_get (int ,scalar_t__) ;
 scalar_t__ wait_for (int *,int *,int *) ;

int_t sys_rt_sigsuspend(addr_t mask_addr, uint_t size) {
    if (size != sizeof(sigset_t_))
        return _EINVAL;
    sigset_t_ mask;
    if (user_get(mask_addr, mask))
        return _EFAULT;
    STRACE("sigsuspend(0x%llx) = ...\n", (long long) mask);

    lock(&current->sighand->lock);
    sigmask_set_temp_unlocked(mask);
    while (wait_for(&current->pause, &current->sighand->lock, ((void*)0)) != _EINTR)
        continue;
    unlock(&current->sighand->lock);
    STRACE("%d done sigsuspend", current->pid);
    return _EINTR;
}
