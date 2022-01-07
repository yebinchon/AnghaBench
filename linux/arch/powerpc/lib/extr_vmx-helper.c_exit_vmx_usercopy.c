
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_kernel_altivec () ;
 int pagefault_enable () ;
 int preempt_enable () ;

int exit_vmx_usercopy(void)
{
 disable_kernel_altivec();
 pagefault_enable();
 preempt_enable();
 return 0;
}
