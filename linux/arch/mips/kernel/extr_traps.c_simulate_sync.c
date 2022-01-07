
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int FUNC ;
 unsigned int OPCODE ;
 int PERF_COUNT_SW_EMULATION_FAULTS ;
 unsigned int SPEC0 ;
 unsigned int SYNC ;
 int perf_sw_event (int ,int,struct pt_regs*,int ) ;

__attribute__((used)) static int simulate_sync(struct pt_regs *regs, unsigned int opcode)
{
 if ((opcode & OPCODE) == SPEC0 && (opcode & FUNC) == SYNC) {
  perf_sw_event(PERF_COUNT_SW_EMULATION_FAULTS,
    1, regs, 0);
  return 0;
 }

 return -1;
}
