
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_FAM10H_MMIO_CONF_BASE ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static unsigned int numachip2_get_apic_id(unsigned long x)
{
 u64 mcfg;

 rdmsrl(MSR_FAM10H_MMIO_CONF_BASE, mcfg);
 return ((mcfg >> (28 - 8)) & 0xfff00) | (x >> 24);
}
