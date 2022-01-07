
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* xstate; } ;
struct task_struct {TYPE_2__ thread; } ;
struct pt_regs {int sr; } ;
typedef int elf_fpregset_t ;
struct TYPE_3__ {int hardfpu; } ;


 int SR_FD ;
 struct task_struct* current ;
 int disable_fpu () ;
 int enable_fpu () ;
 struct task_struct* last_task_used_math ;
 int memcpy (int *,int *,int) ;
 int save_fpu (struct task_struct*) ;
 int tsk_used_math (struct task_struct*) ;

int dump_fpu(struct pt_regs *regs, elf_fpregset_t *fpu)
{
 return 0;

}
