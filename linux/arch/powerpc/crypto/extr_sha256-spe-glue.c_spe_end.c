
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_kernel_spe () ;
 int preempt_enable () ;

__attribute__((used)) static void spe_end(void)
{
 disable_kernel_spe();

 preempt_enable();
}
