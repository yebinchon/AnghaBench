
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_gmac_cmn {int phy_mutex; } ;


 int mutex_init (int *) ;

void bcma_core_gmac_cmn_init(struct bcma_drv_gmac_cmn *gc)
{
 mutex_init(&gc->phy_mutex);
}
