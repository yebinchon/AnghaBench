
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_SETREGS ;
 int errno ;
 scalar_t__ ptrace (int ,long,int ,unsigned long*) ;

int ptrace_setregs(long pid, unsigned long *regs)
{
 if (ptrace(PTRACE_SETREGS, pid, 0, regs) < 0)
  return -errno;
 return 0;
}
