
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int ebony_flashsel_fixup () ;
 int ebony_mac0 ;
 int ebony_mac1 ;
 int ibm440gp_fixup_clocks (unsigned long,int) ;
 int ibm4xx_fixup_ebc_ranges (char*) ;
 int ibm4xx_sdram_fixup_memsize () ;

__attribute__((used)) static void ebony_fixups(void)
{

 unsigned long sysclk = 33000000;

 ibm440gp_fixup_clocks(sysclk, 6 * 1843200);
 ibm4xx_sdram_fixup_memsize();
 dt_fixup_mac_address_by_alias("ethernet0", ebony_mac0);
 dt_fixup_mac_address_by_alias("ethernet1", ebony_mac1);
 ibm4xx_fixup_ebc_ranges("/plb/opb/ebc");
 ebony_flashsel_fixup();
}
