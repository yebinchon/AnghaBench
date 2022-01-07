
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long (* syscall_fn_t ) (struct pt_regs*) ;
struct pt_regs {int dummy; } ;



__attribute__((used)) static long __invoke_syscall(struct pt_regs *regs, syscall_fn_t syscall_fn)
{
 return syscall_fn(regs);
}
