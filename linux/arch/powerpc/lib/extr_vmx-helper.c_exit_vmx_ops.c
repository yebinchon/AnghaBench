
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_kernel_altivec () ;
 int preempt_enable () ;

void *exit_vmx_ops(void *dest)
{
 disable_kernel_altivec();
 preempt_enable();
 return dest;
}
