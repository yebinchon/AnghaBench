
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int worker_task; int lo_number; int worker; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int MIN_NICE ;
 int kthread_init_worker (int *) ;
 int kthread_run (int ,int *,char*,int ) ;
 int loop_kthread_worker_fn ;
 int set_user_nice (int ,int ) ;

__attribute__((used)) static int loop_prepare_queue(struct loop_device *lo)
{
 kthread_init_worker(&lo->worker);
 lo->worker_task = kthread_run(loop_kthread_worker_fn,
   &lo->worker, "loop%d", lo->lo_number);
 if (IS_ERR(lo->worker_task))
  return -ENOMEM;
 set_user_nice(lo->worker_task, MIN_NICE);
 return 0;
}
