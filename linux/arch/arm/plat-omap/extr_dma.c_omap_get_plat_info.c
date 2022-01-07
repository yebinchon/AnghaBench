
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_system_dma_plat_info {int dummy; } ;


 struct omap_system_dma_plat_info* p ;

struct omap_system_dma_plat_info *omap_get_plat_info(void)
{
 return p;
}
