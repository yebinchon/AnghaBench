
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_fpu_struct {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
typedef int elf_fpregset_t ;


 struct task_struct* current ;
 int fpregs_get (struct task_struct*,int *,int ,int,int *,int *) ;
 int tsk_used_math (struct task_struct*) ;

int dump_fpu(struct pt_regs *regs, elf_fpregset_t *fpu)
{
 int fpvalid = 0;
 return fpvalid;
}
