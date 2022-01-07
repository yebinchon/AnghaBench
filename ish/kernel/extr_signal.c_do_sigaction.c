
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sighand {int lock; struct sigaction_* action; } ;
struct sigaction_ {int dummy; } ;
struct TYPE_2__ {struct sighand* sighand; } ;


 int NUM_SIGS ;
 int _EINVAL ;
 TYPE_1__* current ;
 int lock (int *) ;
 int signal_is_blockable (int) ;
 int unlock (int *) ;

__attribute__((used)) static int do_sigaction(int sig, const struct sigaction_ *action, struct sigaction_ *oldaction) {
    if (sig >= NUM_SIGS)
        return _EINVAL;
    if (!signal_is_blockable(sig))
        return _EINVAL;

    struct sighand *sighand = current->sighand;
    lock(&sighand->lock);
    if (oldaction)
        *oldaction = sighand->action[sig];
    if (action)
        sighand->action[sig] = *action;
    unlock(&sighand->lock);
    return 0;
}
