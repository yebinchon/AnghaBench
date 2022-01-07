
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct op_counter_config {int enabled; } ;


 int oprofile_add_sample (struct pt_regs*,unsigned long) ;

__attribute__((used)) static void
ev4_handle_interrupt(unsigned long which, struct pt_regs *regs,
       struct op_counter_config *ctr)
{


 if (!ctr[which].enabled)
  return;


 oprofile_add_sample(regs, which);
}
