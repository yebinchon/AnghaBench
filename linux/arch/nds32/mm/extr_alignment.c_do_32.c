
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ipc; } ;


 int EACCES ;
 int EFAULT ;
 int GET_IMMSVAL (int ) ;
 int IMM (unsigned long) ;
 int RA (unsigned long) ;
 int RB (unsigned long) ;
 int RT (unsigned long) ;
 unsigned long SV (unsigned long) ;
 int access_ok (void*,int) ;
 int get_data (unsigned long,unsigned long*,int) ;
 unsigned long* idx_to_addr (struct pt_regs*,int ) ;
 int set_data (void*,unsigned long,int) ;
 unsigned long sign_extend (unsigned long,int) ;

__attribute__((used)) static inline int do_32(unsigned long inst, struct pt_regs *regs)
{
 int imm, regular, load, len, sign_ext;
 unsigned long unaligned_addr, target_val, shift;

 unaligned_addr = *idx_to_addr(regs, RA(inst));

 switch ((inst >> 25) << 1) {

 case 0x02:
  imm = 1;
  regular = 1;
  load = 1;
  len = 2;
  sign_ext = 0;
  break;
 case 0x0A:
  imm = 1;
  regular = 0;
  load = 1;
  len = 2;
  sign_ext = 0;
  break;
 case 0x22:
  imm = 1;
  regular = 1;
  load = 1;
  len = 2;
  sign_ext = 1;
  break;
 case 0x2A:
  imm = 1;
  regular = 0;
  load = 1;
  len = 2;
  sign_ext = 1;
  break;
 case 0x04:
  imm = 1;
  regular = 1;
  load = 1;
  len = 4;
  sign_ext = 0;
  break;
 case 0x0C:
  imm = 1;
  regular = 0;
  load = 1;
  len = 4;
  sign_ext = 0;
  break;
 case 0x12:
  imm = 1;
  regular = 1;
  load = 0;
  len = 2;
  sign_ext = 0;
  break;
 case 0x1A:
  imm = 1;
  regular = 0;
  load = 0;
  len = 2;
  sign_ext = 0;
  break;
 case 0x14:
  imm = 1;
  regular = 1;
  load = 0;
  len = 4;
  sign_ext = 0;
  break;
 case 0x1C:
  imm = 1;
  regular = 0;
  load = 0;
  len = 4;
  sign_ext = 0;
  break;

 default:
  switch (inst & 0xff) {

  case 0x01:
   imm = 0;
   regular = 1;
   load = 1;
   len = 2;
   sign_ext = 0;
   break;
  case 0x05:
   imm = 0;
   regular = 0;
   load = 1;
   len = 2;
   sign_ext = 0;
   break;
  case 0x11:
   imm = 0;
   regular = 1;
   load = 1;
   len = 2;
   sign_ext = 1;
   break;
  case 0x15:
   imm = 0;
   regular = 0;
   load = 1;
   len = 2;
   sign_ext = 1;
   break;
  case 0x02:
   imm = 0;
   regular = 1;
   load = 1;
   len = 4;
   sign_ext = 0;
   break;
  case 0x06:
   imm = 0;
   regular = 0;
   load = 1;
   len = 4;
   sign_ext = 0;
   break;
  case 0x09:
   imm = 0;
   regular = 1;
   load = 0;
   len = 2;
   sign_ext = 0;
   break;
  case 0x0D:
   imm = 0;
   regular = 0;
   load = 0;
   len = 2;
   sign_ext = 0;
   break;
  case 0x0A:
   imm = 0;
   regular = 1;
   load = 0;
   len = 4;
   sign_ext = 0;
   break;
  case 0x0E:
   imm = 0;
   regular = 0;
   load = 0;
   len = 4;
   sign_ext = 0;
   break;

  default:
   return -EFAULT;
  }
 }

 if (imm)
  shift = GET_IMMSVAL(IMM(inst)) * len;
 else
  shift = *idx_to_addr(regs, RB(inst)) << SV(inst);

 if (regular)
  unaligned_addr += shift;

 if (load) {

  if (!access_ok((void *)unaligned_addr, len))
   return -EACCES;

  get_data(unaligned_addr, &target_val, len);

  if (sign_ext)
   *idx_to_addr(regs, RT(inst)) =
       sign_extend(target_val, len);
  else
   *idx_to_addr(regs, RT(inst)) = target_val;
 } else {

  if (!access_ok((void *)unaligned_addr, len))
   return -EACCES;

  target_val = *idx_to_addr(regs, RT(inst));
  set_data((void *)unaligned_addr, target_val, len);
 }

 if (!regular)
  *idx_to_addr(regs, RA(inst)) = unaligned_addr + shift;

 regs->ipc += 4;

 return 0;
fault:
 return -EACCES;
}
