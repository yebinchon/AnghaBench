
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SYS_ID_AA64PFR0_EL1 ;
 int read_sanitised_ftr_reg (int ) ;

__attribute__((used)) static bool cpu_has_32bit_el1(void)
{
 u64 pfr0;

 pfr0 = read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1);
 return !!(pfr0 & 0x20);
}
