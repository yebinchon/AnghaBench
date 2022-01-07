
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct eth_device {scalar_t__ priv; } ;
struct TYPE_5__ {int descs_dma; } ;
struct TYPE_4__ {int descs_dma; } ;
struct ag71xx {int link; int duplex; TYPE_3__* dev; int speed; scalar_t__ phyfixed; TYPE_2__ rx_ring; TYPE_1__ tx_ring; } ;
typedef int bd_t ;
struct TYPE_6__ {int name; int enetaddr; } ;


 int AG71XX_REG_RX_CTRL ;
 int AG71XX_REG_RX_DESC ;
 int AG71XX_REG_TX_DESC ;
 int DBG (char*,int ,int ,int ) ;
 int RX_CTRL_RXE ;
 int SPEED_1000 ;
 int ag71xx_dma_reset (struct ag71xx*) ;
 scalar_t__ ag71xx_getMiiSpeed (struct ag71xx*) ;
 int ag71xx_hw_set_macaddr (struct ag71xx*,int ) ;
 int ag71xx_link_adjust (struct ag71xx*) ;
 int ag71xx_ring_rx_clean (struct ag71xx*) ;
 int ag71xx_ring_tx_init (struct ag71xx*) ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int ag71xx_hw_start(struct eth_device *dev, bd_t * bd)
{
 struct ag71xx *ag = (struct ag71xx *) dev->priv;

 ag71xx_dma_reset(ag);

    ag71xx_ring_rx_clean(ag);
 ag71xx_ring_tx_init(ag);

 ag71xx_wr(ag, AG71XX_REG_TX_DESC,
    (u32) virt_to_phys(ag->tx_ring.descs_dma));
 ag71xx_wr(ag, AG71XX_REG_RX_DESC,
    (u32) virt_to_phys(ag->rx_ring.descs_dma));

 ag71xx_hw_set_macaddr(ag, ag->dev->enetaddr);

    if (ag->phyfixed) {
        ag->link = 1;
        ag->duplex = 1;
        ag->speed = SPEED_1000;
    } else {






  return -1;


    }
    ag71xx_link_adjust(ag);

 DBG("%s: txdesc reg: %#08x rxdesc reg: %#08x\n",
  ag->dev->name,
  ag71xx_rr(ag, AG71XX_REG_TX_DESC),
  ag71xx_rr(ag, AG71XX_REG_RX_DESC));


 ag71xx_wr(ag, AG71XX_REG_RX_CTRL, RX_CTRL_RXE);

 return 0;
}
