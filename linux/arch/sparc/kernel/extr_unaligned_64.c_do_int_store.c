
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int BUG () ;
 int __do_int_store (unsigned long*,int,unsigned long,int) ;
 scalar_t__ fetch_reg (int,struct pt_regs*) ;
 unsigned long* fetch_reg_addr (int,struct pt_regs*) ;
 unsigned long swab16 (unsigned long) ;
 unsigned long swab32 (unsigned long) ;
 unsigned long swab64 (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int do_int_store(int reg_num, int size, unsigned long *dst_addr,
          struct pt_regs *regs, int asi, int orig_asi)
{
 unsigned long zero = 0;
 unsigned long *src_val_p = &zero;
 unsigned long src_val;

 if (size == 16) {
  size = 8;
  zero = (((long)(reg_num ?
          (unsigned int)fetch_reg(reg_num, regs) : 0)) << 32) |
   (unsigned int)fetch_reg(reg_num + 1, regs);
 } else if (reg_num) {
  src_val_p = fetch_reg_addr(reg_num, regs);
 }
 src_val = *src_val_p;
 if (unlikely(asi != orig_asi)) {
  switch (size) {
  case 2:
   src_val = swab16(src_val);
   break;
  case 4:
   src_val = swab32(src_val);
   break;
  case 8:
   src_val = swab64(src_val);
   break;
  case 16:
  default:
   BUG();
   break;
  }
 }
 return __do_int_store(dst_addr, size, src_val, asi);
}
