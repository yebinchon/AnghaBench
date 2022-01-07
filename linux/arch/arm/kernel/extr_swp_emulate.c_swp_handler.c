
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int ARM_pc; unsigned int* uregs; int ARM_cpsr; } ;
struct TYPE_2__ {scalar_t__ pid; int comm; } ;





 int EFAULT ;
 int EINVAL ;
 size_t EXTRACT_REG_NUM (unsigned int,int ) ;
 int PERF_COUNT_SW_EMULATION_FAULTS ;
 int RN_OFFSET ;
 int RT2_OFFSET ;
 int RT_OFFSET ;
 unsigned int TYPE_SWPB ;
 int access_ok (unsigned int,int) ;
 unsigned int arm_check_condition (unsigned int,int ) ;
 TYPE_1__* current ;
 unsigned int emulate_swpX (unsigned int,unsigned int*,unsigned int) ;
 int perf_sw_event (int ,int,struct pt_regs*,int) ;
 int pr_debug (char*,void*,...) ;
 scalar_t__ previous_pid ;
 int set_segfault (struct pt_regs*,unsigned int) ;

__attribute__((used)) static int swp_handler(struct pt_regs *regs, unsigned int instr)
{
 unsigned int address, destreg, data, type;
 unsigned int res = 0;

 perf_sw_event(PERF_COUNT_SW_EMULATION_FAULTS, 1, regs, regs->ARM_pc);

 res = arm_check_condition(instr, regs->ARM_cpsr);
 switch (res) {
 case 129:
  break;
 case 130:

  regs->ARM_pc += 4;
  return 0;
 case 128:

  return -EFAULT;
 default:
  return -EINVAL;
 }

 if (current->pid != previous_pid) {
  pr_debug("\"%s\" (%ld) uses deprecated SWP{B} instruction\n",
    current->comm, (unsigned long)current->pid);
  previous_pid = current->pid;
 }

 address = regs->uregs[EXTRACT_REG_NUM(instr, RN_OFFSET)];
 data = regs->uregs[EXTRACT_REG_NUM(instr, RT2_OFFSET)];
 destreg = EXTRACT_REG_NUM(instr, RT_OFFSET);

 type = instr & TYPE_SWPB;

 pr_debug("addr in r%d->0x%08x, dest is r%d, source in r%d->0x%08x)\n",
   EXTRACT_REG_NUM(instr, RN_OFFSET), address,
   destreg, EXTRACT_REG_NUM(instr, RT2_OFFSET), data);


 if (!access_ok((address & ~3), 4)) {
  pr_debug("SWP{B} emulation: access to %p not allowed!\n",
    (void *)address);
  res = -EFAULT;
 } else {
  res = emulate_swpX(address, &data, type);
 }

 if (res == 0) {





  regs->ARM_pc += 4;
  regs->uregs[destreg] = data;
 } else if (res == -EFAULT) {




  set_segfault(regs, address);
 }

 return 0;
}
