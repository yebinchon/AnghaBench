
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sighand {int lock; } ;
struct TYPE_3__ {int blocked; struct sighand* sighand; } ;


 int SIGINFO_NIL ;
 scalar_t__ SIGNAL_IGNORE ;
 int SIGTTIN_ ;
 int SIGTTOU_ ;
 int assert (int) ;
 TYPE_1__* current ;
 int deliver_signal_unlocked (TYPE_1__*,int,int ) ;
 int lock (int *) ;
 scalar_t__ signal_action (struct sighand*,int) ;
 int sigset_has (int ,int) ;
 int unlock (int *) ;

bool try_self_signal(int sig) {
    assert(sig == SIGTTIN_ || sig == SIGTTOU_);

    struct sighand *sighand = current->sighand;
    lock(&sighand->lock);
    bool can_send = signal_action(sighand, sig) != SIGNAL_IGNORE &&
        !sigset_has(current->blocked, sig);
    if (can_send)
        deliver_signal_unlocked(current, sig, SIGINFO_NIL);
    unlock(&sighand->lock);
    return can_send;
}
