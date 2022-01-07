
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cc_get_imsk () ;
 int cc_set_imsk (int) ;
 int* cpu_leds ;
 int hard_smp_processor_id () ;
 int show_leds (int) ;

void sun4d_cpu_pre_starting(void *arg)
{
 int cpuid = hard_smp_processor_id();


 cpu_leds[cpuid] = 0x6;
 show_leds(cpuid);


 cc_set_imsk((cc_get_imsk() & ~0x8000) | 0x4000);
}
