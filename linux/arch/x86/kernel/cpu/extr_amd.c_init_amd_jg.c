
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int clear_rdrand_cpuid_bit (struct cpuinfo_x86*) ;

__attribute__((used)) static void init_amd_jg(struct cpuinfo_x86 *c)
{





 clear_rdrand_cpuid_bit(c);
}
