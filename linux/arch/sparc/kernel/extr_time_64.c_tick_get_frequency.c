
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long cpuid_to_freq (int ,int ) ;
 int hard_smp_processor_id () ;
 int prom_root_node ;

__attribute__((used)) static unsigned long tick_get_frequency(void)
{
 return cpuid_to_freq(prom_root_node, hard_smp_processor_id());
}
