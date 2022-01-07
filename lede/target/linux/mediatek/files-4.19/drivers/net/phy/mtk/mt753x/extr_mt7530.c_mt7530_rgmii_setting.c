
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int dummy; } ;


 int CORE_PLL_GROUP10 ;
 int CORE_PLL_GROUP11 ;
 int CORE_PLL_GROUP5 ;
 int CORE_PLL_GROUP6 ;
 int TRGMII_TCK_CTRL ;
 int TRGMII_TXCTRL ;
 int TXC_INV ;
 int TX_TAP_S ;
 int TX_TRAIN_WD_S ;
 int mdelay (int) ;
 int mt7530_core_reg_write (struct gsw_mt753x*,int ,int) ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;

__attribute__((used)) static void mt7530_rgmii_setting(struct gsw_mt753x *gsw)
{
 u32 val;

 mt7530_core_reg_write(gsw, CORE_PLL_GROUP5, 0x0c80);
 mdelay(1);
 mt7530_core_reg_write(gsw, CORE_PLL_GROUP6, 0);
 mt7530_core_reg_write(gsw, CORE_PLL_GROUP10, 0x87);
 mdelay(1);
 mt7530_core_reg_write(gsw, CORE_PLL_GROUP11, 0x87);

 val = mt753x_reg_read(gsw, TRGMII_TXCTRL);
 val &= ~TXC_INV;
 mt753x_reg_write(gsw, TRGMII_TXCTRL, val);

 mt753x_reg_write(gsw, TRGMII_TCK_CTRL,
    (8 << TX_TAP_S) | (0x55 << TX_TRAIN_WD_S));
}
