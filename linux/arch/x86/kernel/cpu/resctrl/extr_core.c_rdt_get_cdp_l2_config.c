
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDT_RESOURCE_L2 ;
 int RDT_RESOURCE_L2CODE ;
 int RDT_RESOURCE_L2DATA ;
 int rdt_get_cdp_config (int ,int ) ;

__attribute__((used)) static void rdt_get_cdp_l2_config(void)
{
 rdt_get_cdp_config(RDT_RESOURCE_L2, RDT_RESOURCE_L2DATA);
 rdt_get_cdp_config(RDT_RESOURCE_L2, RDT_RESOURCE_L2CODE);
}
