
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sigset_t_ ;
typedef scalar_t__ dword_t ;
struct TYPE_2__ {int blocked; } ;


 scalar_t__ SIG_BLOCK_ ;
 scalar_t__ SIG_SETMASK_ ;
 scalar_t__ SIG_UNBLOCK_ ;
 int _EINVAL ;
 TYPE_1__* current ;
 int sigmask_set (int) ;

__attribute__((used)) static int do_sigprocmask(dword_t how, sigset_t_ set) {
    if (how == SIG_BLOCK_)
        sigmask_set(current->blocked | set);
    else if (how == SIG_UNBLOCK_)
        sigmask_set(current->blocked & ~set);
    else if (how == SIG_SETMASK_)
        sigmask_set(set);
    else
        return _EINVAL;
    return 0;
}
