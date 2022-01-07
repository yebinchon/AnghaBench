
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int LL ;
 unsigned int OPCODE ;
 int PERF_COUNT_SW_EMULATION_FAULTS ;
 unsigned int SC ;
 int perf_sw_event (int ,int,struct pt_regs*,int ) ;
 int simulate_ll (struct pt_regs*,unsigned int) ;
 int simulate_sc (struct pt_regs*,unsigned int) ;

__attribute__((used)) static int simulate_llsc(struct pt_regs *regs, unsigned int opcode)
{
 if ((opcode & OPCODE) == LL) {
  perf_sw_event(PERF_COUNT_SW_EMULATION_FAULTS,
    1, regs, 0);
  return simulate_ll(regs, opcode);
 }
 if ((opcode & OPCODE) == SC) {
  perf_sw_event(PERF_COUNT_SW_EMULATION_FAULTS,
    1, regs, 0);
  return simulate_sc(regs, opcode);
 }

 return -1;
}
