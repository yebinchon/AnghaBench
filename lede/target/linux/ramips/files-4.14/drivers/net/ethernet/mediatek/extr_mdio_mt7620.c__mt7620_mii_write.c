
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7620_gsw {int dummy; } ;


 int GSW_MDIO_ACCESS ;
 int GSW_MDIO_ADDR_SHIFT ;
 int GSW_MDIO_REG_SHIFT ;
 int GSW_MDIO_START ;
 int GSW_MDIO_WRITE ;
 int MT7620A_GSW_REG_PIAC ;
 scalar_t__ mt7620_mii_busy_wait (struct mt7620_gsw*) ;
 int mtk_switch_w32 (struct mt7620_gsw*,int,int ) ;

u32 _mt7620_mii_write(struct mt7620_gsw *gsw, u32 phy_addr,
        u32 phy_register, u32 write_data)
{
 if (mt7620_mii_busy_wait(gsw))
  return -1;

 write_data &= 0xffff;

 mtk_switch_w32(gsw, GSW_MDIO_ACCESS | GSW_MDIO_START | GSW_MDIO_WRITE |
  (phy_register << GSW_MDIO_REG_SHIFT) |
  (phy_addr << GSW_MDIO_ADDR_SHIFT) | write_data,
  MT7620A_GSW_REG_PIAC);

 if (mt7620_mii_busy_wait(gsw))
  return -1;

 return 0;
}
