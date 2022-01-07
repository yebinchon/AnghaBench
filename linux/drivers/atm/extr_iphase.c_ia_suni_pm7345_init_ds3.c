
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iadev_priv {int carrier_detect; } ;
struct ia_reg {int member_1; int member_0; } ;


 int ARRAY_SIZE (struct ia_reg const*) ;



 int SUNI_DS3_FRM_STAT ;
 int SUNI_DS3_LOSV ;



 int ia_phy_read32 (struct iadev_priv*,int ) ;
 int ia_phy_write (struct iadev_priv*,struct ia_reg const*,int ) ;

__attribute__((used)) static void ia_suni_pm7345_init_ds3(struct iadev_priv *iadev)
{
 static const struct ia_reg suni_ds3_init[] = {
  { 131, 0x17 },
  { 132, 0x01 },
  { 130, 0x01 },
  { 133, 0 },
  { 129, 0 },
  { 128, 0 }
 };
 u32 status;

 status = ia_phy_read32(iadev, SUNI_DS3_FRM_STAT);
 iadev->carrier_detect = (status & SUNI_DS3_LOSV) ? 0 : 1;

 ia_phy_write(iadev, suni_ds3_init, ARRAY_SIZE(suni_ds3_init));
}
