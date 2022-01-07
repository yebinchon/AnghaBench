
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fr; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct task_struct {TYPE_2__ thread; } ;
typedef int elf_fpregset_t ;


 int memcpy (int *,int ,int) ;

int dump_task_fpu (struct task_struct *tsk, elf_fpregset_t *r)
{
 memcpy(r, tsk->thread.regs.fr, sizeof(*r));
 return 1;
}
