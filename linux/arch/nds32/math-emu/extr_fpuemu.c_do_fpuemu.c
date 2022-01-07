
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ipc; } ;
struct fpu_struct {int dummy; } ;


 scalar_t__ NDS32Insn_OPCODE (unsigned long) ;
 int NDS32Insn_OPCODE_COP0 (unsigned long) ;
 int SIGBUS ;
 int SIGILL ;
 scalar_t__ __get_user (char,unsigned char*) ;
 unsigned long be32_to_cpu (unsigned long) ;
 scalar_t__ cop0_op ;


 int fpu_emu (struct fpu_struct*,unsigned long) ;



int do_fpuemu(struct pt_regs *regs, struct fpu_struct *fpu)
{
 unsigned long insn = 0, addr = regs->ipc;
 unsigned long emulpc, contpc;
 unsigned char *pc = (void *)&insn;
 char c;
 int i = 0, ret;

 for (i = 0; i < 4; i++) {
  if (__get_user(c, (unsigned char *)addr++))
   return SIGBUS;
  *pc++ = c;
 }

 insn = be32_to_cpu(insn);

 emulpc = regs->ipc;
 contpc = regs->ipc + 4;

 if (NDS32Insn_OPCODE(insn) != cop0_op)
  return SIGILL;

 switch (NDS32Insn_OPCODE_COP0(insn)) {
 case 129:
 case 128:
 case 131:
 case 130:
  {

   ret = fpu_emu(fpu, insn);
   if (!ret)
    regs->ipc = contpc;
  }
  break;

 default:
  return SIGILL;
 }

 return ret;
}
