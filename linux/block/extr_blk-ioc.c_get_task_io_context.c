
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct io_context* io_context; } ;
struct io_context {int dummy; } ;
typedef int gfp_t ;


 int create_task_io_context (struct task_struct*,int ,int) ;
 int get_io_context (struct io_context*) ;
 int gfpflags_allow_blocking (int ) ;
 scalar_t__ likely (struct io_context*) ;
 int might_sleep_if (int ) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

struct io_context *get_task_io_context(struct task_struct *task,
           gfp_t gfp_flags, int node)
{
 struct io_context *ioc;

 might_sleep_if(gfpflags_allow_blocking(gfp_flags));

 do {
  task_lock(task);
  ioc = task->io_context;
  if (likely(ioc)) {
   get_io_context(ioc);
   task_unlock(task);
   return ioc;
  }
  task_unlock(task);
 } while (!create_task_io_context(task, gfp_flags, node));

 return ((void*)0);
}
