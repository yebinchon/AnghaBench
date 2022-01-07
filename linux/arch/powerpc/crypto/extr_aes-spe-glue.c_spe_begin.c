
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_kernel_spe () ;
 int preempt_disable () ;

__attribute__((used)) static void spe_begin(void)
{

 preempt_disable();
 enable_kernel_spe();
}
