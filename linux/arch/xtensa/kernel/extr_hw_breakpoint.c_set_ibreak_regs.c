
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {int address; } ;


 scalar_t__ SREG_IBREAKA ;
 int SREG_IBREAKENABLE ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 unsigned long xtensa_get_sr (int ) ;
 int xtensa_set_sr (unsigned long,int ) ;
 int xtensa_wsr (int ,scalar_t__) ;

__attribute__((used)) static void set_ibreak_regs(int reg, struct perf_event *bp)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);
 unsigned long ibreakenable;

 xtensa_wsr(info->address, SREG_IBREAKA + reg);
 ibreakenable = xtensa_get_sr(SREG_IBREAKENABLE);
 xtensa_set_sr(ibreakenable | (1 << reg), SREG_IBREAKENABLE);
}
