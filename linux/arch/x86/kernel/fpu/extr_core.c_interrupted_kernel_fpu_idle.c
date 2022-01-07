
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kernel_fpu_disabled () ;

__attribute__((used)) static bool interrupted_kernel_fpu_idle(void)
{
 return !kernel_fpu_disabled();
}
