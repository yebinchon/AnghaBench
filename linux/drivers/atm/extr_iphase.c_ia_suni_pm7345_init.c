
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iadev_priv {int phy_type; } ;
struct ia_reg {int member_1; int member_0; } ;
struct TYPE_2__ {int suni_rxcp_intr_en_sts; } ;


 int ARRAY_SIZE (struct ia_reg const*) ;
 int FE_DS3_PHY ;
 int SUNI_CONFIG ;



 int SUNI_OOCDE ;
 int SUNI_PM7345_CLB ;
 int SUNI_PM7345_DLB ;
 int SUNI_PM7345_LLB ;
 int SUNI_PM7345_PLB ;
 int ia_phy_read32 (struct iadev_priv*,int ) ;
 int ia_phy_write (struct iadev_priv*,struct ia_reg const*,int ) ;
 int ia_phy_write32 (struct iadev_priv*,int ,int) ;
 int ia_suni_pm7345_init_ds3 (struct iadev_priv*) ;
 int ia_suni_pm7345_init_e3 (struct iadev_priv*) ;
 TYPE_1__* suni_pm7345 ;

__attribute__((used)) static void ia_suni_pm7345_init(struct iadev_priv *iadev)
{
 static const struct ia_reg suni_init[] = {

  { 150, 0x28 },

  { 151, 0 },

  { 149, 0 },

  { 140, 0x2c },
  { 139, 0x81 },

  { 134, 0 },
  { 133, 0 },
  { 132, 0 },
  { 131, 0x01 },

  { 138, 0xff },
  { 137, 0xff },
  { 136, 0xff },
  { 135, 0xfe },

  { 144, 0 },
  { 143, 0 },
  { 142, 0 },
  { 141, 0x01 },

  { 148, 0xff },
  { 147, 0xff },
  { 146, 0xff },
  { 145, 0xff },

  { 130, 0xa4 },
  { 128, 0x10 },
  { 129, 0x55 }
 };

 if (iadev->phy_type & FE_DS3_PHY)
  ia_suni_pm7345_init_ds3(iadev);
 else
  ia_suni_pm7345_init_e3(iadev);

 ia_phy_write(iadev, suni_init, ARRAY_SIZE(suni_init));

 ia_phy_write32(iadev, SUNI_CONFIG, ia_phy_read32(iadev, SUNI_CONFIG) &
  ~(SUNI_PM7345_LLB | SUNI_PM7345_CLB |
    SUNI_PM7345_DLB | SUNI_PM7345_PLB));



   return;
}
