
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mii_read ) (struct gsw_mt753x*,int,int) ;int (* mmd_read ) (struct gsw_mt753x*,int,int ,int ) ;int (* mmd_write ) (struct gsw_mt753x*,int,int ,int ,int) ;int (* mii_write ) (struct gsw_mt753x*,int,int,int) ;} ;


 int MT753X_NUM_PHYS ;
 int PHY_DEV07 ;
 int PHY_DEV07_REG_03C ;
 int PHY_DEV1E ;
 int PHY_DEV1E_REG_0C6 ;
 int PHY_DEV1E_REG_123 ;
 int PHY_DEV1E_REG_13 ;
 int PHY_DEV1E_REG_14 ;
 int PHY_DEV1E_REG_A6 ;
 int PHY_DEV1F ;
 int PHY_DEV1F_REG_44 ;
 int PHY_EN_DOWN_SHFIT ;
 int PHY_EXT_REG_14 ;
 int PHY_EXT_REG_17 ;
 int PHY_LINKDOWN_POWER_SAVING_EN ;
 int PHY_POWER_SAVING_M ;
 int PHY_POWER_SAVING_S ;
 int PHY_POWER_SAVING_TX ;
 int PHY_TR_REG_10 ;
 int PHY_TR_REG_12 ;
 int stub1 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub10 (struct gsw_mt753x*,int,int,int) ;
 int stub11 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub12 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub13 (struct gsw_mt753x*,int,int) ;
 int stub14 (struct gsw_mt753x*,int,int,int) ;
 int stub15 (struct gsw_mt753x*,int,int ,int ) ;
 int stub16 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub17 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub18 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub2 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub3 (struct gsw_mt753x*,int,int,int) ;
 int stub4 (struct gsw_mt753x*,int,int) ;
 int stub5 (struct gsw_mt753x*,int,int,int) ;
 int stub6 (struct gsw_mt753x*,int,int,int) ;
 int stub7 (struct gsw_mt753x*,int,int,int) ;
 int stub8 (struct gsw_mt753x*,int,int,int) ;
 int stub9 (struct gsw_mt753x*,int,int,int) ;

__attribute__((used)) static void mt7531_phy_setting(struct gsw_mt753x *gsw)
{
 int i;
 u32 val;


 gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_44, 0xc0);

 for (i = 0; i < MT753X_NUM_PHYS; i++) {

  gsw->mmd_write(gsw, i, PHY_DEV07, PHY_DEV07_REG_03C, 0);


  gsw->mii_write(gsw, i, 0x1f, 0x1);
  val = gsw->mii_read(gsw, i, PHY_EXT_REG_14);
  val |= PHY_EN_DOWN_SHFIT;
  gsw->mii_write(gsw, i, PHY_EXT_REG_14, val);


  gsw->mii_write(gsw, i, 0x1f, 0x52b5);
  gsw->mii_write(gsw, i, PHY_TR_REG_10, 0xafae);
  gsw->mii_write(gsw, i, PHY_TR_REG_12, 0x2f);
  gsw->mii_write(gsw, i, PHY_TR_REG_10, 0x8fae);
  gsw->mii_write(gsw, i, 0x1f, 0);


  gsw->mmd_write(gsw, i, PHY_DEV1E, PHY_DEV1E_REG_123, 0xffff);


  gsw->mmd_write(gsw, i, PHY_DEV1E, PHY_DEV1E_REG_A6, 0x300);


  val = gsw->mii_read(gsw, i, PHY_EXT_REG_17);
  val |= PHY_LINKDOWN_POWER_SAVING_EN;
  gsw->mii_write(gsw, i, PHY_EXT_REG_17, val);

  val = gsw->mmd_read(gsw, i, PHY_DEV1E, PHY_DEV1E_REG_0C6);
  val &= ~PHY_POWER_SAVING_M;
  val |= PHY_POWER_SAVING_TX << PHY_POWER_SAVING_S;
  gsw->mmd_write(gsw, i, PHY_DEV1E, PHY_DEV1E_REG_0C6, val);


  gsw->mmd_write(gsw, i, PHY_DEV1E, PHY_DEV1E_REG_13, 0x404);
  gsw->mmd_write(gsw, i, PHY_DEV1E, PHY_DEV1E_REG_14, 0x404);
 }
}
