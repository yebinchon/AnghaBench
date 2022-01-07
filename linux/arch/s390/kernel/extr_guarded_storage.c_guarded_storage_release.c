
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gs_bc_cb; int gs_cb; } ;
struct task_struct {TYPE_1__ thread; } ;


 int kfree (int ) ;

void guarded_storage_release(struct task_struct *tsk)
{
 kfree(tsk->thread.gs_cb);
 kfree(tsk->thread.gs_bc_cb);
}
