
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_AMD64_IC_CFG ;
 int msr_set_bit (int ,int) ;

__attribute__((used)) static void __fix_erratum_688(void *info)
{


 msr_set_bit(0xC0011021, 3);
 msr_set_bit(0xC0011021, 14);
}
