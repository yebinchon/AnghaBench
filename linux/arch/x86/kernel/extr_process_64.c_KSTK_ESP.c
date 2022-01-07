
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long sp; } ;


 TYPE_1__* task_pt_regs (struct task_struct*) ;

unsigned long KSTK_ESP(struct task_struct *task)
{
 return task_pt_regs(task)->sp;
}
