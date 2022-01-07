
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSR_G3_EXT_IRQ_GEN ;
 int write_lcsr (int ,int) ;

__attribute__((used)) static void numachip1_apic_icr_write(int apicid, unsigned int val)
{
 write_lcsr(CSR_G3_EXT_IRQ_GEN, (apicid << 16) | val);
}
