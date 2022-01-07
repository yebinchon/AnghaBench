
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; void* iov_base; } ;


 int FP_SIZE ;
 int NT_X86_XSTATE ;
 int PTRACE_GETREGSET ;
 int free (void*) ;
 int have_xstate_support ;
 void* malloc (int) ;
 scalar_t__ ptrace (int ,int,int ,struct iovec*) ;

void arch_init_registers(int pid)
{
}
