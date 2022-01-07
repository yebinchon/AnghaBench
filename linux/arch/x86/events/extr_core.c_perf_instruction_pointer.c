
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long ip; } ;
struct TYPE_2__ {unsigned long (* get_guest_ip ) () ;scalar_t__ (* is_in_guest ) () ;} ;


 unsigned long code_segment_base (struct pt_regs*) ;
 TYPE_1__* perf_guest_cbs ;
 scalar_t__ stub1 () ;
 unsigned long stub2 () ;

unsigned long perf_instruction_pointer(struct pt_regs *regs)
{
 if (perf_guest_cbs && perf_guest_cbs->is_in_guest())
  return perf_guest_cbs->get_guest_ip();

 return regs->ip + code_segment_base(regs);
}
