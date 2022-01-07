
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 long ENOSYS ;
 long compat_arm_syscall (struct pt_regs*,int) ;
 scalar_t__ is_compat_task () ;
 long sys_ni_syscall () ;

__attribute__((used)) static long do_ni_syscall(struct pt_regs *regs, int scno)
{
 return sys_ni_syscall();
}
