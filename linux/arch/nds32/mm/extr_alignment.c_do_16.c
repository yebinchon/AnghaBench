
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ipc; } ;


 int EACCES ;
 int EFAULT ;
 int IMM3U (unsigned long) ;
 unsigned long RA3 (unsigned long) ;
 unsigned long RA5 (unsigned long) ;
 unsigned long RT3 (unsigned long) ;
 unsigned long RT4 (unsigned long) ;
 int access_ok (void*,int) ;
 int get_data (unsigned long,unsigned long*,int) ;
 unsigned long* idx_to_addr (struct pt_regs*,unsigned long) ;
 int set_data (void*,unsigned long,int) ;

__attribute__((used)) static inline int do_16(unsigned long inst, struct pt_regs *regs)
{
 int imm, regular, load, len, addr_mode, idx_mode;
 unsigned long unaligned_addr, target_val, source_idx, target_idx,
     shift = 0;
 switch ((inst >> 9) & 0x3F) {

 case 0x12:
  imm = 1;
  regular = 1;
  load = 1;
  len = 2;
  addr_mode = 3;
  idx_mode = 3;
  break;
 case 0x10:
  imm = 1;
  regular = 1;
  load = 1;
  len = 4;
  addr_mode = 3;
  idx_mode = 3;
  break;
 case 0x11:
  imm = 1;
  regular = 0;
  load = 1;
  len = 4;
  addr_mode = 3;
  idx_mode = 3;
  break;
 case 0x1A:
  imm = 0;
  regular = 1;
  load = 1;
  len = 4;
  addr_mode = 5;
  idx_mode = 4;
  break;
 case 0x16:
  imm = 1;
  regular = 1;
  load = 0;
  len = 2;
  addr_mode = 3;
  idx_mode = 3;
  break;
 case 0x14:
  imm = 1;
  regular = 1;
  load = 0;
  len = 4;
  addr_mode = 3;
  idx_mode = 3;
  break;
 case 0x15:
  imm = 1;
  regular = 0;
  load = 0;
  len = 4;
  addr_mode = 3;
  idx_mode = 3;
  break;
 case 0x1B:
  imm = 0;
  regular = 1;
  load = 0;
  len = 4;
  addr_mode = 5;
  idx_mode = 4;
  break;

 default:
  return -EFAULT;
 }

 if (addr_mode == 3) {
  unaligned_addr = *idx_to_addr(regs, RA3(inst));
  source_idx = RA3(inst);
 } else {
  unaligned_addr = *idx_to_addr(regs, RA5(inst));
  source_idx = RA5(inst);
 }

 if (idx_mode == 3)
  target_idx = RT3(inst);
 else
  target_idx = RT4(inst);

 if (imm)
  shift = IMM3U(inst) * len;

 if (regular)
  unaligned_addr += shift;

 if (load) {
  if (!access_ok((void *)unaligned_addr, len))
   return -EACCES;

  get_data(unaligned_addr, &target_val, len);
  *idx_to_addr(regs, target_idx) = target_val;
 } else {
  if (!access_ok((void *)unaligned_addr, len))
   return -EACCES;
  target_val = *idx_to_addr(regs, target_idx);
  set_data((void *)unaligned_addr, target_val, len);
 }

 if (!regular)
  *idx_to_addr(regs, source_idx) = unaligned_addr + shift;
 regs->ipc += 2;

 return 0;
fault:
 return -EACCES;
}
