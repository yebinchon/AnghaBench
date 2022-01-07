
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct eth_device {int name; scalar_t__ priv; } ;
struct ag71xx_ring {unsigned int curr; TYPE_1__* buf; } ;
struct ag71xx_desc {int ctrl; } ;
struct ag71xx {struct ag71xx_ring rx_ring; } ;
struct TYPE_2__ {struct ag71xx_desc* desc; } ;


 int AG71XX_REG_RX_CTRL ;
 unsigned int AG71XX_RX_RING_SIZE ;
 int DBG (char*,int ,unsigned int) ;
 int DESC_EMPTY ;
 scalar_t__ ETH_FCS_LEN ;
 int NetReceive (scalar_t__,int) ;
 scalar_t__* NetRxPackets ;
 int PKTSIZE_ALIGN ;
 int RX_CTRL_RXE ;
 scalar_t__ ag71xx_desc_empty (struct ag71xx_desc*) ;
 int ag71xx_desc_pktlen (struct ag71xx_desc*) ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int ag71xx_wr (struct ag71xx*,int ,int) ;
 int flush_cache (int ,int ) ;

__attribute__((used)) static int ag71xx_recv(struct eth_device *dev)
{
    struct ag71xx *ag = (struct ag71xx *) dev->priv;
 struct ag71xx_ring *ring = &ag->rx_ring;

    for (;;) {
  unsigned int i = ring->curr % AG71XX_RX_RING_SIZE;
  struct ag71xx_desc *desc = ring->buf[i].desc;
  int pktlen;

  if (ag71xx_desc_empty(desc))
   break;

  DBG("%s: rx packets, curr=%u\n", dev->name, ring->curr);

        pktlen = ag71xx_desc_pktlen(desc);
  pktlen -= ETH_FCS_LEN;


  NetReceive(NetRxPackets[i] , pktlen);
  flush_cache( (u32) NetRxPackets[i], PKTSIZE_ALIGN);

        ring->buf[i].desc->ctrl = DESC_EMPTY;
  ring->curr++;
  if (ring->curr >= AG71XX_RX_RING_SIZE){
   ring->curr = 0;
  }

    }

 if ((ag71xx_rr(ag, AG71XX_REG_RX_CTRL) & RX_CTRL_RXE) == 0) {

  ag71xx_wr(ag, AG71XX_REG_RX_CTRL, RX_CTRL_RXE);
 }

 return 0;
}
