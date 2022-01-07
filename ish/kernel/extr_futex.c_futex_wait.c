
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct futex {int cond; } ;
typedef scalar_t__ dword_t ;
typedef int addr_t ;
struct TYPE_2__ {int pid; } ;


 int STRACE (char*,int ) ;
 int _EAGAIN ;
 int _EFAULT ;
 TYPE_1__* current ;
 struct futex* futex_get (int ) ;
 scalar_t__ futex_load (struct futex*,scalar_t__*) ;
 int futex_lock ;
 int futex_put (struct futex*) ;
 int wait_for (int *,int *,struct timespec*) ;

int futex_wait(addr_t uaddr, dword_t val, struct timespec *timeout) {
    struct futex *futex = futex_get(uaddr);
    int err = 0;
    dword_t tmp;
    if (futex_load(futex, &tmp))
        err = _EFAULT;
    else if (tmp != val)
        err = _EAGAIN;
    else
        err = wait_for(&futex->cond, &futex_lock, timeout);
    futex_put(futex);
    STRACE("%d end futex(FUTEX_WAIT)", current->pid);
    return err;
}
