
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iadev_priv {int carrier_detect; } ;
struct ia_reg {int member_1; int member_0; } ;


 int ARRAY_SIZE (struct ia_reg const*) ;


 int SUNI_E3_FRM_FRAM_INTR_IND_STAT ;



 int SUNI_E3_LOS ;





 int ia_phy_read32 (struct iadev_priv*,int ) ;
 int ia_phy_write (struct iadev_priv*,struct ia_reg const*,int ) ;

__attribute__((used)) static void ia_suni_pm7345_init_e3(struct iadev_priv *iadev)
{
 static const struct ia_reg suni_e3_init[] = {
  { 135, 0x04 },
  { 133, 0x20 },
  { 136, 0x1d },
  { 134, 0x30 },
  { 131, 0 },
  { 132, 0x01 },
  { 137, 130 },
  { 129, 0x41 },
  { 128, 0x41 }
 };
 u32 status;

 status = ia_phy_read32(iadev, SUNI_E3_FRM_FRAM_INTR_IND_STAT);
 iadev->carrier_detect = (status & SUNI_E3_LOS) ? 0 : 1;
 ia_phy_write(iadev, suni_e3_init, ARRAY_SIZE(suni_e3_init));
}
