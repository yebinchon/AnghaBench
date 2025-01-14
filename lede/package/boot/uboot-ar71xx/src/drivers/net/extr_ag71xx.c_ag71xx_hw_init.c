
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_5__ {int descs_dma; } ;
struct TYPE_4__ {int descs_dma; } ;
struct ag71xx {scalar_t__ macNum; TYPE_3__* dev; TYPE_2__ rx_ring; TYPE_1__ tx_ring; int mii_if; } ;
struct TYPE_6__ {int enetaddr; } ;


 int AG71XX_REG_FIFO_CFG0 ;
 int AG71XX_REG_FIFO_CFG1 ;
 int AG71XX_REG_FIFO_CFG2 ;
 int AG71XX_REG_FIFO_CFG4 ;
 int AG71XX_REG_FIFO_CFG5 ;
 int AG71XX_REG_MAC_CFG1 ;
 int AG71XX_REG_MAC_CFG2 ;
 int AG71XX_REG_MII_CFG ;
 int AG71XX_REG_RX_DESC ;
 int AG71XX_REG_TX_DESC ;
 int AR91XX_RESET_REG_RESET_MODULE ;
 int FIFO_CFG0_INIT ;
 int FIFO_CFG4_INIT ;
 int FIFO_CFG5_INIT ;
 int MAC_CFG1_RXE ;
 int MAC_CFG1_SR ;
 int MAC_CFG1_TXE ;
 int MAC_CFG2_LEN_CHECK ;
 int MAC_CFG2_PAD_CRC_EN ;
 int MII_CFG_CLK_DIV_20 ;
 int RESET_MODULE_GE0_MAC ;
 int RESET_MODULE_GE0_PHY ;
 int RESET_MODULE_GE1_MAC ;
 int RESET_MODULE_GE1_PHY ;
 int ag71xx_dma_reset (struct ag71xx*) ;
 int ag71xx_hw_set_macaddr (struct ag71xx*,int ) ;
 int ag71xx_mii_ctrl_set_if (struct ag71xx*,int ) ;
 int ag71xx_rings_init (struct ag71xx*) ;
 int ag71xx_sb (struct ag71xx*,int ,int) ;
 int ag71xx_wr (struct ag71xx*,int ,int) ;
 int ar71xx_reset_rr (int ) ;
 int ar71xx_reset_wr (int ,int) ;
 int udelay (int) ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int ag71xx_hw_init(struct ag71xx *ag)
{
    int ret = 0;
 uint32_t reg;
 uint32_t mask, mii_type;

    if (ag->macNum == 0) {
        mask = (RESET_MODULE_GE0_MAC | RESET_MODULE_GE0_PHY);
        mii_type = 0x13;
    } else {
        mask = (RESET_MODULE_GE1_MAC | RESET_MODULE_GE1_PHY);
        mii_type = 0x11;
    }


    ag71xx_sb(ag, AG71XX_REG_MAC_CFG1, MAC_CFG1_SR);
    udelay(20);


 reg = ar71xx_reset_rr(AR91XX_RESET_REG_RESET_MODULE);
 ar71xx_reset_wr(AR91XX_RESET_REG_RESET_MODULE, reg | mask);
 udelay(100 * 1000);


    reg = ar71xx_reset_rr(AR91XX_RESET_REG_RESET_MODULE);
    ar71xx_reset_wr(AR91XX_RESET_REG_RESET_MODULE, reg & ~mask);
    udelay(100 * 1000);


    ag71xx_wr(ag, AG71XX_REG_MAC_CFG1, (MAC_CFG1_RXE | MAC_CFG1_TXE));

    ag71xx_sb(ag, AG71XX_REG_MAC_CFG2,
          MAC_CFG2_PAD_CRC_EN | MAC_CFG2_LEN_CHECK);


    ag71xx_wr(ag, AG71XX_REG_FIFO_CFG0, FIFO_CFG0_INIT);


    ag71xx_mii_ctrl_set_if(ag, ag->mii_if);


    ag71xx_wr(ag, AG71XX_REG_MII_CFG, MII_CFG_CLK_DIV_20);


 ag71xx_sb(ag, AG71XX_REG_FIFO_CFG4, FIFO_CFG4_INIT);
    ag71xx_wr(ag, AG71XX_REG_FIFO_CFG1, 0x0fff0000);
    ag71xx_wr(ag, AG71XX_REG_FIFO_CFG2, 0x00001fff);
    ag71xx_wr(ag, AG71XX_REG_FIFO_CFG5, FIFO_CFG5_INIT);

    ag71xx_dma_reset(ag);

    ret = ag71xx_rings_init(ag);
    if (ret)
        return -1;

 ag71xx_wr(ag, AG71XX_REG_TX_DESC,
    (u32) virt_to_phys(ag->tx_ring.descs_dma));
 ag71xx_wr(ag, AG71XX_REG_RX_DESC,
    (u32) virt_to_phys(ag->rx_ring.descs_dma));

 ag71xx_hw_set_macaddr(ag, ag->dev->enetaddr);

    return 0;
}
