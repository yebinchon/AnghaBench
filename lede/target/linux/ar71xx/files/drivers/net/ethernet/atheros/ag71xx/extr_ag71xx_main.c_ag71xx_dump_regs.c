
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ag71xx {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int AG71XX_REG_FIFO_CFG0 ;
 int AG71XX_REG_FIFO_CFG1 ;
 int AG71XX_REG_FIFO_CFG2 ;
 int AG71XX_REG_FIFO_CFG3 ;
 int AG71XX_REG_FIFO_CFG4 ;
 int AG71XX_REG_FIFO_CFG5 ;
 int AG71XX_REG_MAC_ADDR1 ;
 int AG71XX_REG_MAC_ADDR2 ;
 int AG71XX_REG_MAC_CFG1 ;
 int AG71XX_REG_MAC_CFG2 ;
 int AG71XX_REG_MAC_HDX ;
 int AG71XX_REG_MAC_IFCTL ;
 int AG71XX_REG_MAC_IPG ;
 int AG71XX_REG_MAC_MFL ;
 int DBG (char*,int ,int ,int ,int ,...) ;
 int ag71xx_rr (struct ag71xx*,int ) ;

__attribute__((used)) static void ag71xx_dump_regs(struct ag71xx *ag)
{
 DBG("%s: mac_cfg1=%08x, mac_cfg2=%08x, ipg=%08x, hdx=%08x, mfl=%08x\n",
  ag->dev->name,
  ag71xx_rr(ag, AG71XX_REG_MAC_CFG1),
  ag71xx_rr(ag, AG71XX_REG_MAC_CFG2),
  ag71xx_rr(ag, AG71XX_REG_MAC_IPG),
  ag71xx_rr(ag, AG71XX_REG_MAC_HDX),
  ag71xx_rr(ag, AG71XX_REG_MAC_MFL));
 DBG("%s: mac_ifctl=%08x, mac_addr1=%08x, mac_addr2=%08x\n",
  ag->dev->name,
  ag71xx_rr(ag, AG71XX_REG_MAC_IFCTL),
  ag71xx_rr(ag, AG71XX_REG_MAC_ADDR1),
  ag71xx_rr(ag, AG71XX_REG_MAC_ADDR2));
 DBG("%s: fifo_cfg0=%08x, fifo_cfg1=%08x, fifo_cfg2=%08x\n",
  ag->dev->name,
  ag71xx_rr(ag, AG71XX_REG_FIFO_CFG0),
  ag71xx_rr(ag, AG71XX_REG_FIFO_CFG1),
  ag71xx_rr(ag, AG71XX_REG_FIFO_CFG2));
 DBG("%s: fifo_cfg3=%08x, fifo_cfg4=%08x, fifo_cfg5=%08x\n",
  ag->dev->name,
  ag71xx_rr(ag, AG71XX_REG_FIFO_CFG3),
  ag71xx_rr(ag, AG71XX_REG_FIFO_CFG4),
  ag71xx_rr(ag, AG71XX_REG_FIFO_CFG5));
}
