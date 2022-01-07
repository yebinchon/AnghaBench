
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_enetaddr; } ;


 TYPE_1__ bd ;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int ibm440ep_fixup_clocks (int,int,int) ;
 int ibm4xx_fixup_ebc_ranges (char*) ;
 int ibm4xx_sdram_fixup_memsize () ;

__attribute__((used)) static void warp_fixups(void)
{
 ibm440ep_fixup_clocks(66000000, 11059200, 50000000);
 ibm4xx_sdram_fixup_memsize();
 ibm4xx_fixup_ebc_ranges("/plb/opb/ebc");
 dt_fixup_mac_address_by_alias("ethernet0", bd.bi_enetaddr);
}
