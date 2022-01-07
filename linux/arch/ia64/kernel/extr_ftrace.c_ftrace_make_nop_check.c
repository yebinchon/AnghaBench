
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_orig_insn {int imm20; int sign; } ;
struct ftrace_call_insn {int i; int imm20; int imm39_h; int imm39_l; } ;
struct dyn_ftrace {unsigned long ip; int flags; } ;


 int EFAULT ;
 int EINVAL ;
 int FTRACE_FL_CONVERTED ;
 int MCOUNT_INSN_SIZE ;
 scalar_t__ ftrace_call_code ;
 scalar_t__ ftrace_orig_code ;
 scalar_t__ memcmp (unsigned char*,scalar_t__,int) ;
 scalar_t__ probe_kernel_read (unsigned char*,void*,int) ;

__attribute__((used)) static int ftrace_make_nop_check(struct dyn_ftrace *rec, unsigned long addr)
{
 unsigned char __attribute__((aligned(8))) replaced[MCOUNT_INSN_SIZE];
 unsigned long ip = rec->ip;

 if (probe_kernel_read(replaced, (void *)ip, MCOUNT_INSN_SIZE))
  return -EFAULT;
 if (rec->flags & FTRACE_FL_CONVERTED) {
  struct ftrace_call_insn *call_insn, *tmp_call;

  call_insn = (void *)ftrace_call_code;
  tmp_call = (void *)replaced;
  call_insn->imm39_l = tmp_call->imm39_l;
  call_insn->imm39_h = tmp_call->imm39_h;
  call_insn->imm20 = tmp_call->imm20;
  call_insn->i = tmp_call->i;
  if (memcmp(replaced, ftrace_call_code, MCOUNT_INSN_SIZE) != 0)
   return -EINVAL;
  return 0;
 } else {
  struct ftrace_orig_insn *call_insn, *tmp_call;

  call_insn = (void *)ftrace_orig_code;
  tmp_call = (void *)replaced;
  call_insn->sign = tmp_call->sign;
  call_insn->imm20 = tmp_call->imm20;
  if (memcmp(replaced, ftrace_orig_code, MCOUNT_INSN_SIZE) != 0)
   return -EINVAL;
  return 0;
 }
}
