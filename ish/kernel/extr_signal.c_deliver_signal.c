
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {TYPE_1__* sighand; } ;
struct siginfo_ {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int deliver_signal_unlocked (struct task*,int,struct siginfo_) ;
 int lock (int *) ;
 int unlock (int *) ;

void deliver_signal(struct task *task, int sig, struct siginfo_ info) {
    lock(&task->sighand->lock);
    deliver_signal_unlocked(task, sig, info);
    unlock(&task->sighand->lock);
}
