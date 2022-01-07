
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {unsigned long* iov_base; int iov_len; } ;


 int FP_SIZE ;
 int NT_X86_XSTATE ;
 int PTRACE_GETREGSET ;
 int errno ;
 scalar_t__ have_xstate_support ;
 scalar_t__ ptrace (int ,int,int ,struct iovec*) ;
 int save_i387_registers (int,unsigned long*) ;

int save_fp_registers(int pid, unsigned long *fp_regs)
{
  return save_i387_registers(pid, fp_regs);
}
