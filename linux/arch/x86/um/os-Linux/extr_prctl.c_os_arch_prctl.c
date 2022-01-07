
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_ARCH_PRCTL ;
 int ptrace (int ,int,unsigned long,int) ;

int os_arch_prctl(int pid, int option, unsigned long *arg2)
{
 return ptrace(PTRACE_ARCH_PRCTL, pid, (unsigned long) arg2, option);
}
