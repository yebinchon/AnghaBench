
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7620_gsw {int dummy; } ;


 int GSW_MDIO_ACCESS ;
 int GSW_MDIO_ADDR_SHIFT ;
 int GSW_MDIO_READ ;
 int GSW_MDIO_REG_SHIFT ;
 int GSW_MDIO_START ;
 int MT7620A_GSW_REG_PIAC ;
 scalar_t__ mt7620_mii_busy_wait (struct mt7620_gsw*) ;
 int mtk_switch_r32 (struct mt7620_gsw*,int ) ;
 int mtk_switch_w32 (struct mt7620_gsw*,int,int ) ;

u32 _mt7620_mii_read(struct mt7620_gsw *gsw, int phy_addr, int phy_reg)
{
 u32 d;

 if (mt7620_mii_busy_wait(gsw))
  return 0xffff;

 mtk_switch_w32(gsw, GSW_MDIO_ACCESS | GSW_MDIO_START | GSW_MDIO_READ |
  (phy_reg << GSW_MDIO_REG_SHIFT) |
  (phy_addr << GSW_MDIO_ADDR_SHIFT),
  MT7620A_GSW_REG_PIAC);

 if (mt7620_mii_busy_wait(gsw))
  return 0xffff;

 d = mtk_switch_r32(gsw, MT7620A_GSW_REG_PIAC) & 0xffff;

 return d;
}
