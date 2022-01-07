
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int extended_cpuid_level; unsigned int x86_max_cores; unsigned int x86_coreid_bits; } ;


 unsigned int cpuid_ecx (int) ;

__attribute__((used)) static void early_init_hygon_mc(struct cpuinfo_x86 *c)
{
}
