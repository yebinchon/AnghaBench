
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __raw_readl (int ) ;
 int sh2_cpuid_addr ;

__attribute__((used)) static unsigned int j2_smp_processor_id(void)
{
 return __raw_readl(sh2_cpuid_addr);
}
