
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_enet1addr; int bi_enetaddr; } ;


 TYPE_1__ bd ;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int ibm440ep_fixup_clocks (unsigned long,int,int) ;
 int ibm4xx_denali_fixup_memsize () ;
 int ibm4xx_fixup_ebc_ranges (char*) ;

__attribute__((used)) static void rainier_fixups(void)
{
 unsigned long sysclk = 33333333;

 ibm440ep_fixup_clocks(sysclk, 11059200, 50000000);
 ibm4xx_fixup_ebc_ranges("/plb/opb/ebc");
 ibm4xx_denali_fixup_memsize();
 dt_fixup_mac_address_by_alias("ethernet0", bd.bi_enetaddr);
 dt_fixup_mac_address_by_alias("ethernet1", bd.bi_enet1addr);
}
