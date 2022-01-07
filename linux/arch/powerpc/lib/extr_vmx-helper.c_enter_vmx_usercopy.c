
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_kernel_altivec () ;
 scalar_t__ in_interrupt () ;
 int pagefault_disable () ;
 int preempt_disable () ;

int enter_vmx_usercopy(void)
{
 if (in_interrupt())
  return 0;

 preempt_disable();





 pagefault_disable();

 enable_kernel_altivec();

 return 1;
}
