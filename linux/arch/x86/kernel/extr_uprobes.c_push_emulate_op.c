
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int ip; } ;
struct TYPE_2__ {int reg_offset; scalar_t__ ilen; } ;
struct arch_uprobe {TYPE_1__ push; } ;


 scalar_t__ emulate_push_stack (struct pt_regs*,unsigned long) ;

__attribute__((used)) static bool push_emulate_op(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 unsigned long *src_ptr = (void *)regs + auprobe->push.reg_offset;

 if (emulate_push_stack(regs, *src_ptr))
  return 0;
 regs->ip += auprobe->push.ilen;
 return 1;
}
