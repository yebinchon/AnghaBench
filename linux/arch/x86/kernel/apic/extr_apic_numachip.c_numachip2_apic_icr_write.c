
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMACHIP2_APIC_ICR ;
 int numachip2_write32_lcsr (int ,int) ;

__attribute__((used)) static void numachip2_apic_icr_write(int apicid, unsigned int val)
{
 numachip2_write32_lcsr(NUMACHIP2_APIC_ICR, (apicid << 12) | val);
}
