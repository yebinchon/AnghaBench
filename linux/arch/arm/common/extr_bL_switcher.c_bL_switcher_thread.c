
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
struct bL_thread {int wanted_cluster; int lock; int (* completer ) (void*) ;void* completer_cookie; int wq; int started; } ;
typedef int (* bL_switch_completion_handler ) (void*) ;


 int SCHED_FIFO ;
 int bL_switch_to (int) ;
 int complete (int *) ;
 int current ;
 int flush_signals (int ) ;
 scalar_t__ kthread_should_stop () ;
 int sched_setscheduler_nocheck (int ,int ,struct sched_param*) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int bL_switcher_thread(void *arg)
{
 struct bL_thread *t = arg;
 struct sched_param param = { .sched_priority = 1 };
 int cluster;
 bL_switch_completion_handler completer;
 void *completer_cookie;

 sched_setscheduler_nocheck(current, SCHED_FIFO, &param);
 complete(&t->started);

 do {
  if (signal_pending(current))
   flush_signals(current);
  wait_event_interruptible(t->wq,
    t->wanted_cluster != -1 ||
    kthread_should_stop());

  spin_lock(&t->lock);
  cluster = t->wanted_cluster;
  completer = t->completer;
  completer_cookie = t->completer_cookie;
  t->wanted_cluster = -1;
  t->completer = ((void*)0);
  spin_unlock(&t->lock);

  if (cluster != -1) {
   bL_switch_to(cluster);

   if (completer)
    completer(completer_cookie);
  }
 } while (!kthread_should_stop());

 return 0;
}
