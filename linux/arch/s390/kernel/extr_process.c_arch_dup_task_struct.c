
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fprs; int regs; } ;
struct TYPE_4__ {TYPE_1__ fpu; } ;
struct task_struct {TYPE_2__ thread; } ;


 int arch_task_struct_size ;
 int memcpy (struct task_struct*,struct task_struct*,int ) ;
 int save_fpu_regs () ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{





 save_fpu_regs();

 memcpy(dst, src, arch_task_struct_size);
 dst->thread.fpu.regs = dst->thread.fpu.fprs;
 return 0;
}
