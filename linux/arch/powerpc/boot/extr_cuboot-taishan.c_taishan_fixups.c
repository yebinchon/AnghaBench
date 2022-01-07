
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_enet1addr; int bi_enetaddr; } ;


 TYPE_1__ bd ;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int ibm440gx_fixup_clocks (unsigned long,int,int) ;
 int ibm4xx_fixup_ebc_ranges (char*) ;
 int ibm4xx_sdram_fixup_memsize () ;

__attribute__((used)) static void taishan_fixups(void)
{


 unsigned long sysclk = 33000000;

 ibm440gx_fixup_clocks(sysclk, 6 * 1843200, 25000000);

 ibm4xx_sdram_fixup_memsize();

 dt_fixup_mac_address_by_alias("ethernet0", bd.bi_enetaddr);
 dt_fixup_mac_address_by_alias("ethernet1", bd.bi_enet1addr);

 ibm4xx_fixup_ebc_ranges("/plb/opb/ebc");
}
