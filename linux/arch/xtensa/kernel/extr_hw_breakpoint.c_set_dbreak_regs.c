
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {unsigned long len; int type; unsigned long address; } ;


 unsigned long DBREAKC_LOAD_MASK ;
 unsigned long DBREAKC_MASK_MASK ;
 unsigned long DBREAKC_STOR_MASK ;
 scalar_t__ SREG_DBREAKA ;
 scalar_t__ SREG_DBREAKC ;
 int XTENSA_BREAKPOINT_LOAD ;
 int XTENSA_BREAKPOINT_STORE ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 int xtensa_wsr (unsigned long,scalar_t__) ;

__attribute__((used)) static void set_dbreak_regs(int reg, struct perf_event *bp)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);
 unsigned long dbreakc = DBREAKC_MASK_MASK & -info->len;

 if (info->type & XTENSA_BREAKPOINT_LOAD)
  dbreakc |= DBREAKC_LOAD_MASK;
 if (info->type & XTENSA_BREAKPOINT_STORE)
  dbreakc |= DBREAKC_STOR_MASK;

 xtensa_wsr(info->address, SREG_DBREAKA + reg);
 xtensa_wsr(dbreakc, SREG_DBREAKC + reg);
}
