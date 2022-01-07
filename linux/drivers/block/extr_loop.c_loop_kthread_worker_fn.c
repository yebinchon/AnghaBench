
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PF_LESS_THROTTLE ;
 int PF_MEMALLOC_NOIO ;
 TYPE_1__* current ;
 int kthread_worker_fn (void*) ;

__attribute__((used)) static int loop_kthread_worker_fn(void *worker_ptr)
{
 current->flags |= PF_LESS_THROTTLE | PF_MEMALLOC_NOIO;
 return kthread_worker_fn(worker_ptr);
}
