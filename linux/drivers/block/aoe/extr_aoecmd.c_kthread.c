
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ktstate {int (* fn ) (int ) ;int rendez; int waitq; int lock; int id; } ;
struct TYPE_4__ {int flags; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_1__*) ;
 int PF_NOFREEZE ;
 int TASK_INTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue (int ,int *) ;
 int complete (int *) ;
 int cond_resched () ;
 TYPE_1__* current ;
 int kthread_should_stop () ;
 int remove_wait_queue (int ,int *) ;
 int schedule () ;
 int set_user_nice (TYPE_1__*,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (int ) ;
 int wait ;

__attribute__((used)) static int
kthread(void *vp)
{
 struct ktstate *k;
 DECLARE_WAITQUEUE(wait, current);
 int more;

 k = vp;
 current->flags |= PF_NOFREEZE;
 set_user_nice(current, -10);
 complete(&k->rendez);
 do {
  spin_lock_irq(k->lock);
  more = k->fn(k->id);
  if (!more) {
   add_wait_queue(k->waitq, &wait);
   __set_current_state(TASK_INTERRUPTIBLE);
  }
  spin_unlock_irq(k->lock);
  if (!more) {
   schedule();
   remove_wait_queue(k->waitq, &wait);
  } else
   cond_resched();
 } while (!kthread_should_stop());
 complete(&k->rendez);
 return 0;
}
