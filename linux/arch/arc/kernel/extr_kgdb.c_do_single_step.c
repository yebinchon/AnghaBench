
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {scalar_t__ ret; } ;
struct callee_regs {int dummy; } ;
struct TYPE_4__ {scalar_t__ callee_reg; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;
struct TYPE_5__ {int armed; int * opcode; int * address; scalar_t__ is_branch; } ;


 TYPE_3__* current ;
 scalar_t__ disasm_next_pc (unsigned long,struct pt_regs*,struct callee_regs*,int *,int *) ;
 int place_trap (int ,int *) ;
 TYPE_2__ single_step_data ;

__attribute__((used)) static void do_single_step(struct pt_regs *regs)
{
 single_step_data.is_branch = disasm_next_pc((unsigned long)
  regs->ret, regs, (struct callee_regs *)
  current->thread.callee_reg,
  &single_step_data.address[0],
  &single_step_data.address[1]);

 place_trap(single_step_data.address[0], &single_step_data.opcode[0]);

 if (single_step_data.is_branch) {
  place_trap(single_step_data.address[1],
   &single_step_data.opcode[1]);
 }

 single_step_data.armed++;
}
