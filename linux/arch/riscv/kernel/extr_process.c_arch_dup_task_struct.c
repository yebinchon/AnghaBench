
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int fstate_save (struct task_struct*,int ) ;
 int task_pt_regs (struct task_struct*) ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{
 fstate_save(src, task_pt_regs(src));
 *dst = *src;
 return 0;
}
