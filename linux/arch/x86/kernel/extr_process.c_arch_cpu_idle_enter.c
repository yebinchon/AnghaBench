
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_touch_nmi () ;
 int tsc_verify_tsc_adjust (int) ;

void arch_cpu_idle_enter(void)
{
 tsc_verify_tsc_adjust(0);
 local_touch_nmi();
}
