
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_SW0 ;
 int __sync () ;
 int bmips_booted_mask ;
 int bmips_smp_movevec ;
 int cpumask_set_cpu (int,int *) ;
 int memcpy (void*,int *,int) ;
 int set_c0_cause (int ) ;

__attribute__((used)) static void bcm63xx_fixup_cpu1(void)
{
 memcpy((void *)0xa0000200, &bmips_smp_movevec, 0x20);
 __sync();
 set_c0_cause(C_SW0);
 cpumask_set_cpu(1, &bmips_booted_mask);
}
