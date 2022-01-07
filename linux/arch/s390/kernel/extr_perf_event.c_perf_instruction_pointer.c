
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long instruction_pointer (struct pt_regs*) ;
 unsigned long instruction_pointer_guest (struct pt_regs*) ;
 scalar_t__ is_in_guest (struct pt_regs*) ;

unsigned long perf_instruction_pointer(struct pt_regs *regs)
{
 return is_in_guest(regs) ? instruction_pointer_guest(regs)
     : instruction_pointer(regs);
}
