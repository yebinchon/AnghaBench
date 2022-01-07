
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
typedef int microblaze_reg_t ;


 struct pt_regs* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static microblaze_reg_t *reg_save_addr(unsigned reg_offs,
     struct task_struct *t)
{
 struct pt_regs *regs;
 regs = task_pt_regs(t);

 return (microblaze_reg_t *)((char *)regs + reg_offs);
}
