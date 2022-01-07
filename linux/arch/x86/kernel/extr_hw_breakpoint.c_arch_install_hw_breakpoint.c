
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {unsigned long address; scalar_t__ mask; int type; int len; } ;


 int EBUSY ;
 int HBP_NUM ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int __this_cpu_write (int ,unsigned long) ;
 int * bp_per_reg ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 int * cpu_debugreg ;
 int cpu_dr7 ;
 unsigned long encode_dr7 (int,int ,int ) ;
 int set_debugreg (unsigned long,int) ;
 int set_dr_addr_mask (scalar_t__,int) ;
 void* this_cpu_ptr (int *) ;

int arch_install_hw_breakpoint(struct perf_event *bp)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);
 unsigned long *dr7;
 int i;

 for (i = 0; i < HBP_NUM; i++) {
  struct perf_event **slot = this_cpu_ptr(&bp_per_reg[i]);

  if (!*slot) {
   *slot = bp;
   break;
  }
 }

 if (WARN_ONCE(i == HBP_NUM, "Can't find any breakpoint slot"))
  return -EBUSY;

 set_debugreg(info->address, i);
 __this_cpu_write(cpu_debugreg[i], info->address);

 dr7 = this_cpu_ptr(&cpu_dr7);
 *dr7 |= encode_dr7(i, info->len, info->type);

 set_debugreg(*dr7, 7);
 if (info->mask)
  set_dr_addr_mask(info->mask, i);

 return 0;
}
