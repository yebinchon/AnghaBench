
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {TYPE_1__* group; struct sighand* sighand; scalar_t__ zombie; } ;
struct siginfo_ {int dummy; } ;
struct sighand {int lock; } ;
struct TYPE_2__ {int stopped; int lock; int stopped_cond; } ;


 int SIGCONT_ ;
 int SIGKILL_ ;
 scalar_t__ SIGNAL_IGNORE ;
 int deliver_signal_unlocked (struct task*,int,struct siginfo_) ;
 int lock (int *) ;
 int notify (int *) ;
 scalar_t__ signal_action (struct sighand*,int) ;
 int unlock (int *) ;

void send_signal(struct task *task, int sig, struct siginfo_ info) {

    if (sig == 0)
        return;
    if (task->zombie)
        return;

    struct sighand *sighand = task->sighand;
    lock(&sighand->lock);
    if (signal_action(sighand, sig) != SIGNAL_IGNORE) {
        deliver_signal_unlocked(task, sig, info);
    }
    unlock(&sighand->lock);

    if (sig == SIGCONT_ || sig == SIGKILL_) {
        lock(&task->group->lock);
        task->group->stopped = 0;
        notify(&task->group->stopped_cond);
        unlock(&task->group->lock);
    }
}
