
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct io_context* io_context; } ;
struct io_context {int nr_tasks; } ;


 int atomic_dec (int *) ;
 int put_io_context_active (struct io_context*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void exit_io_context(struct task_struct *task)
{
 struct io_context *ioc;

 task_lock(task);
 ioc = task->io_context;
 task->io_context = ((void*)0);
 task_unlock(task);

 atomic_dec(&ioc->nr_tasks);
 put_io_context_active(ioc);
}
