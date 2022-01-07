
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iadev_priv {int carrier_detect; } ;
struct TYPE_2__ {int mb25_master_ctrl; } ;


 int MB25_DIAG_CONTROL ;
 int MB25_INTR_STATUS ;
 int MB25_IS_GSB ;
 int MB25_MASTER_CTRL ;
 int MB25_MC_DREC ;
 int MB25_MC_DRIC ;
 int MB25_MC_ENABLED ;
 int ia_phy_read32 (struct iadev_priv*,int ) ;
 int ia_phy_write32 (struct iadev_priv*,int ,int) ;
 TYPE_1__* mb25 ;

__attribute__((used)) static void ia_mb25_init(struct iadev_priv *iadev)
{



 ia_phy_write32(iadev, MB25_MASTER_CTRL, MB25_MC_DRIC | MB25_MC_DREC);
 ia_phy_write32(iadev, MB25_DIAG_CONTROL, 0);

 iadev->carrier_detect =
  (ia_phy_read32(iadev, MB25_INTR_STATUS) & MB25_IS_GSB) ? 1 : 0;
}
