
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * xstate; } ;
struct task_struct {TYPE_1__ thread; } ;


 int kmem_cache_free (int ,int *) ;
 int task_xstate_cachep ;

void free_thread_xstate(struct task_struct *tsk)
{
 if (tsk->thread.xstate) {
  kmem_cache_free(task_xstate_cachep, tsk->thread.xstate);
  tsk->thread.xstate = ((void*)0);
 }
}
