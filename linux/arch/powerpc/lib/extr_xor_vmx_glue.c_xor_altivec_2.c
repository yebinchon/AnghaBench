
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __xor_altivec_2 (unsigned long,unsigned long*,unsigned long*) ;
 int disable_kernel_altivec () ;
 int enable_kernel_altivec () ;
 int preempt_disable () ;
 int preempt_enable () ;

void xor_altivec_2(unsigned long bytes, unsigned long *v1_in,
     unsigned long *v2_in)
{
 preempt_disable();
 enable_kernel_altivec();
 __xor_altivec_2(bytes, v1_in, v2_in);
 disable_kernel_altivec();
 preempt_enable();
}
