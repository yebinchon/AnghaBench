
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_interrupt () ;
 scalar_t__ interrupted_kernel_fpu_idle () ;
 scalar_t__ interrupted_user_mode () ;

bool irq_fpu_usable(void)
{
 return !in_interrupt() ||
  interrupted_user_mode() ||
  interrupted_kernel_fpu_idle();
}
