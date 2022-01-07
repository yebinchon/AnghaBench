
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct pt_regs {int pc; int pr; int sr; void** regs; } ;
struct mem_access {int dummy; } ;
typedef int insn_size_t ;


 int EFAULT ;
 int EINVAL ;
 int PERF_COUNT_SW_ALIGNMENT_FAULTS ;
 int SH_PC_12BIT_OFFSET (int) ;
 int SH_PC_8BIT_OFFSET (int) ;
 int current ;
 int handle_delayslot (struct pt_regs*,int,struct mem_access*) ;
 int handle_unaligned_ins (int,struct pt_regs*,struct mem_access*) ;
 int instruction_size (int) ;
 int perf_sw_event (int ,int,struct pt_regs*,unsigned long) ;
 int unaligned_fixups_notify (int ,int,struct pt_regs*) ;

int handle_unaligned_access(insn_size_t instruction, struct pt_regs *regs,
       struct mem_access *ma, int expected,
       unsigned long address)
{
 u_int rm;
 int ret, index;




 if (instruction_size(instruction) != 2)
  return -EINVAL;

 index = (instruction>>8)&15;
 rm = regs->regs[index];
 if (!expected) {
  unaligned_fixups_notify(current, instruction, regs);
  perf_sw_event(PERF_COUNT_SW_ALIGNMENT_FAULTS, 1,
         regs, address);
 }

 ret = -EFAULT;
 switch (instruction&0xF000) {
 case 0x0000:
  if (instruction==0x000B) {

   ret = handle_delayslot(regs, instruction, ma);
   if (ret==0)
    regs->pc = regs->pr;
  }
  else if ((instruction&0x00FF)==0x0023) {

   ret = handle_delayslot(regs, instruction, ma);
   if (ret==0)
    regs->pc += rm + 4;
  }
  else if ((instruction&0x00FF)==0x0003) {

   ret = handle_delayslot(regs, instruction, ma);
   if (ret==0) {
    regs->pr = regs->pc + 4;
    regs->pc += rm + 4;
   }
  }
  else {

   goto simple;
  }
  break;

 case 0x1000:
  goto simple;

 case 0x2000:
  goto simple;

 case 0x4000:
  if ((instruction&0x00FF)==0x002B) {

   ret = handle_delayslot(regs, instruction, ma);
   if (ret==0)
    regs->pc = rm;
  }
  else if ((instruction&0x00FF)==0x000B) {

   ret = handle_delayslot(regs, instruction, ma);
   if (ret==0) {
    regs->pr = regs->pc + 4;
    regs->pc = rm;
   }
  }
  else {

   goto simple;
  }
  break;

 case 0x5000:
  goto simple;

 case 0x6000:
  goto simple;

 case 0x8000:
  switch (instruction&0x0F00) {
  case 0x0100:
   goto simple;
  case 0x0500:
   goto simple;
  case 0x0B00:
   ret = 0;
   break;
  case 0x0F00:
   ret = handle_delayslot(regs, instruction, ma);
   if (ret==0) {





     regs->pc += SH_PC_8BIT_OFFSET(instruction);
   }
   break;
  case 0x0900:
   ret = 0;
   break;
  case 0x0D00:
   ret = handle_delayslot(regs, instruction, ma);
   if (ret==0) {





     regs->pc += SH_PC_8BIT_OFFSET(instruction);
   }
   break;
  }
  break;

 case 0x9000:
  goto simple;

 case 0xA000:
  ret = handle_delayslot(regs, instruction, ma);
  if (ret==0)
   regs->pc += SH_PC_12BIT_OFFSET(instruction);
  break;

 case 0xB000:
  ret = handle_delayslot(regs, instruction, ma);
  if (ret==0) {
   regs->pr = regs->pc + 4;
   regs->pc += SH_PC_12BIT_OFFSET(instruction);
  }
  break;

 case 0xD000:
  goto simple;
 }
 return ret;


 simple:
 ret = handle_unaligned_ins(instruction, regs, ma);
 if (ret==0)
  regs->pc += instruction_size(instruction);
 return ret;
}
