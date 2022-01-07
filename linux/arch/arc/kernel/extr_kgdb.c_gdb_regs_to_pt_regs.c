
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct callee_regs {int dummy; } ;
struct TYPE_3__ {scalar_t__ callee_reg; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int from_gdb_regs (unsigned long*,struct pt_regs*,struct callee_regs*) ;

void gdb_regs_to_pt_regs(unsigned long *gdb_regs, struct pt_regs *kernel_regs)
{
 from_gdb_regs(gdb_regs, kernel_regs, (struct callee_regs *)
  current->thread.callee_reg);
}
