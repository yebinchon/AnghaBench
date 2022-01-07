
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pt_regs {int msr; unsigned long* gpr; unsigned long dar; int ccr; int xer; } ;
struct instruction_op {int type; unsigned int ea; size_t reg; unsigned long val; int vsx_flags; int update_reg; } ;


 int BYTEREV ;
 int EACCES ;
 int EFAULT ;
 int EINVAL ;
 int GETSIZE (int) ;
 int GETTYPE (int) ;






 int MSR_FP ;
 int MSR_KERNEL ;
 int MSR_LE ;
 int MSR_PR ;
 unsigned long MSR_VEC ;
 unsigned long MSR_VSX ;
 int SIGNEXT ;
 int STACK_INT_FRAME_SIZE ;






 int UPDATE ;
 int VSX_CHECK_VEC ;
 int __get_user_asmx (unsigned long,unsigned long,int,char*) ;
 int __put_user_asmx (unsigned long,unsigned long,int,char*,unsigned int) ;
 int address_ok (struct pt_regs*,unsigned long,int) ;
 unsigned int byterev_4 (unsigned int) ;
 int copy_mem_in (int *,unsigned long,int,struct pt_regs*) ;
 int copy_mem_out (int *,unsigned long,int,struct pt_regs*) ;
 int do_byterev (unsigned long*,int) ;
 int do_fp_load (struct instruction_op*,unsigned long,struct pt_regs*,int) ;
 int do_fp_store (struct instruction_op*,unsigned long,struct pt_regs*,int) ;
 int do_lqarx (unsigned long,unsigned long*) ;
 int do_signext (unsigned long*,int) ;
 int do_stqcx (unsigned long,unsigned long,unsigned long,unsigned int*) ;
 int do_vec_load (size_t,unsigned long,int,struct pt_regs*,int) ;
 int do_vec_store (int,unsigned long,int,struct pt_regs*,int) ;
 int do_vsx_load (struct instruction_op*,unsigned long,struct pt_regs*,int) ;
 int do_vsx_store (struct instruction_op*,unsigned long,struct pt_regs*,int) ;
 int emulate_lq (struct pt_regs*,unsigned long,size_t,int) ;
 int emulate_stq (struct pt_regs*,unsigned long,int,int) ;
 int handle_stack_update (unsigned long,struct pt_regs*) ;
 int read_mem (unsigned long*,unsigned long,int,struct pt_regs*) ;
 unsigned long truncate_if_32bit (int,unsigned int) ;
 int unlikely (int) ;
 int write_mem (unsigned long,unsigned long,int,struct pt_regs*) ;

int emulate_loadstore(struct pt_regs *regs, struct instruction_op *op)
{
 int err, size, type;
 int i, rd, nb;
 unsigned int cr;
 unsigned long val;
 unsigned long ea;
 bool cross_endian;

 err = 0;
 size = GETSIZE(op->type);
 type = GETTYPE(op->type);
 cross_endian = (regs->msr & MSR_LE) != (MSR_KERNEL & MSR_LE);
 ea = truncate_if_32bit(regs->msr, op->ea);

 switch (type) {
 case 139:
  if (ea & (size - 1))
   return -EACCES;
  if (!address_ok(regs, ea, size))
   return -EFAULT;
  err = 0;
  val = 0;
  switch (size) {
  case 4:
   __get_user_asmx(val, ea, err, "lwarx");
   break;
  default:
   return -EINVAL;
  }
  if (err) {
   regs->dar = ea;
   break;
  }
  if (size < 16)
   regs->gpr[op->reg] = val;
  break;

 case 133:
  if (ea & (size - 1))
   return -EACCES;
  if (!address_ok(regs, ea, size))
   return -EFAULT;
  err = 0;
  switch (size) {
  case 4:
   __put_user_asmx(op->val, ea, err, "stwcx.", cr);
   break;
  default:
   return -EINVAL;
  }
  if (!err)
   regs->ccr = (regs->ccr & 0x0fffffff) |
    (cr & 0xe0000000) |
    ((regs->xer >> 3) & 0x10000000);
  else
   regs->dar = ea;
  break;

 case 138:






  err = read_mem(&regs->gpr[op->reg], ea, size, regs);
  if (!err) {
   if (op->type & SIGNEXT)
    do_signext(&regs->gpr[op->reg], size);
   if ((op->type & BYTEREV) == (cross_endian ? 0 : BYTEREV))
    do_byterev(&regs->gpr[op->reg], size);
  }
  break;
 case 136:
  if (!address_ok(regs, ea, size))
   return -EFAULT;
  rd = op->reg;
  for (i = 0; i < size; i += 4) {
   unsigned int v32 = 0;

   nb = size - i;
   if (nb > 4)
    nb = 4;
   err = copy_mem_in((u8 *) &v32, ea, nb, regs);
   if (err)
    break;
   if (unlikely(cross_endian))
    v32 = byterev_4(v32);
   regs->gpr[rd] = v32;
   ea += 4;

   rd = (rd + 1) & 0x1f;
  }
  break;

 case 132:






  if ((op->type & UPDATE) && size == sizeof(long) &&
      op->reg == 1 && op->update_reg == 1 &&
      !(regs->msr & MSR_PR) &&
      ea >= regs->gpr[1] - STACK_INT_FRAME_SIZE) {
   err = handle_stack_update(ea, regs);
   break;
  }
  if (unlikely(cross_endian))
   do_byterev(&op->val, size);
  err = write_mem(op->val, ea, size, regs);
  break;
 case 130:
  if (!address_ok(regs, ea, size))
   return -EFAULT;
  rd = op->reg;
  for (i = 0; i < size; i += 4) {
   unsigned int v32 = regs->gpr[rd];

   nb = size - i;
   if (nb > 4)
    nb = 4;
   if (unlikely(cross_endian))
    v32 = byterev_4(v32);
   err = copy_mem_out((u8 *) &v32, ea, nb, regs);
   if (err)
    break;
   ea += 4;

   rd = (rd + 1) & 0x1f;
  }
  break;

 default:
  return -EINVAL;
 }

 if (err)
  return err;

 if (op->type & UPDATE)
  regs->gpr[op->update_reg] = op->ea;

 return 0;
}
