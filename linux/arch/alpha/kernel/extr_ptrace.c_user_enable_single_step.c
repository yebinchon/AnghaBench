
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int bpt_nsaved; } ;


 TYPE_1__* task_thread_info (struct task_struct*) ;

void user_enable_single_step(struct task_struct *child)
{

 task_thread_info(child)->bpt_nsaved = -1;
}
