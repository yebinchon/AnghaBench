
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDT_RESOURCE_L2 ;
 int RDT_RESOURCE_L2CODE ;
 int RDT_RESOURCE_L2DATA ;
 int cdp_disable (int ,int ,int ) ;

__attribute__((used)) static void cdpl2_disable(void)
{
 cdp_disable(RDT_RESOURCE_L2, RDT_RESOURCE_L2DATA, RDT_RESOURCE_L2CODE);
}
