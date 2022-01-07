
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sigset_t_ ;
typedef int int_t ;
typedef int addr_t ;
struct TYPE_2__ {int pending; int blocked; } ;


 int STRACE (char*) ;
 int _EFAULT ;
 TYPE_1__* current ;
 scalar_t__ user_put (int ,int) ;

int_t sys_rt_sigpending(addr_t set_addr) {
    STRACE("rt_sigpending(%#x)");

    sigset_t_ pending = current->pending & current->blocked;
    if (user_put(set_addr, pending))
        return _EFAULT;
    return 0;
}
