
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int* utraps; } ;
struct task_struct {int dummy; } ;


 int kfree (int*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;

void exit_thread(struct task_struct *tsk)
{
 struct thread_info *t = task_thread_info(tsk);

 if (t->utraps) {
  if (t->utraps[0] < 2)
   kfree (t->utraps);
  else
   t->utraps[0]--;
 }
}
