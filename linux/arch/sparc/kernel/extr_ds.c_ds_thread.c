
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int ds_wait ;
 int ds_work_list ;
 int finish_wait (int *,int *) ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ list_empty (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int process_ds_work () ;
 int schedule () ;
 int wait ;

__attribute__((used)) static int ds_thread(void *__unused)
{
 DEFINE_WAIT(wait);

 while (1) {
  prepare_to_wait(&ds_wait, &wait, TASK_INTERRUPTIBLE);
  if (list_empty(&ds_work_list))
   schedule();
  finish_wait(&ds_wait, &wait);

  if (kthread_should_stop())
   break;

  process_ds_work();
 }

 return 0;
}
