
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDT_RESOURCE_L3 ;
 int RDT_RESOURCE_L3CODE ;
 int RDT_RESOURCE_L3DATA ;
 int cdp_enable (int ,int ,int ) ;

__attribute__((used)) static int cdpl3_enable(void)
{
 return cdp_enable(RDT_RESOURCE_L3, RDT_RESOURCE_L3DATA,
     RDT_RESOURCE_L3CODE);
}
