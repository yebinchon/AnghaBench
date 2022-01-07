
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int DAVINCI_SYSTEM_MODULE_BASE ;
 int davinci_sysmod_base ;
 int ioremap_nocache (int ,int) ;

void davinci_map_sysmod(void)
{
 davinci_sysmod_base = ioremap_nocache(DAVINCI_SYSTEM_MODULE_BASE,
           0x800);





 BUG_ON(!davinci_sysmod_base);
}
