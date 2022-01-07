
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDT_RESOURCE_L3 ;
 int RDT_RESOURCE_L3CODE ;
 int RDT_RESOURCE_L3DATA ;
 int rdt_get_cdp_config (int ,int ) ;

__attribute__((used)) static void rdt_get_cdp_l3_config(void)
{
 rdt_get_cdp_config(RDT_RESOURCE_L3, RDT_RESOURCE_L3DATA);
 rdt_get_cdp_config(RDT_RESOURCE_L3, RDT_RESOURCE_L3CODE);
}
