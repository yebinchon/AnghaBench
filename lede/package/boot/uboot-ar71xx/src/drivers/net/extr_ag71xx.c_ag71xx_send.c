
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct eth_device {scalar_t__ priv; } ;
struct ag71xx_ring {int curr; TYPE_1__* buf; } ;
struct ag71xx_desc {int ctrl; scalar_t__ data; } ;
struct ag71xx {TYPE_2__* dev; struct ag71xx_ring tx_ring; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {struct ag71xx_desc* desc; } ;


 int AG71XX_REG_TX_CTRL ;
 int AG71XX_TX_RING_SIZE ;
 int DBG (char*,char*,scalar_t__,int) ;
 int DESC_EMPTY ;
 int DESC_PKTLEN_M ;
 int MAX_WAIT ;
 int TX_CTRL_TXE ;
 scalar_t__ ag71xx_desc_empty (struct ag71xx_desc*) ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;
 int flush_cache (scalar_t__,int) ;
 int printf (char*,char*) ;
 int udelay (int) ;
 scalar_t__ virt_to_phys (void volatile*) ;

__attribute__((used)) static int ag71xx_send(struct eth_device *dev, volatile void *packet,
                       int length)
{
    struct ag71xx *ag = (struct ag71xx *) dev->priv;
 struct ag71xx_ring *ring = &ag->tx_ring;
 struct ag71xx_desc *desc;
 int i;

 i = ring->curr % AG71XX_TX_RING_SIZE;
 desc = ring->buf[i].desc;

 if (!ag71xx_desc_empty(desc)) {
  printf("%s: tx buffer full\n", ag->dev->name);
  return 1;
 }

 flush_cache((u32) packet, length);
    desc->data = (u32) virt_to_phys(packet);
    desc->ctrl = (length & DESC_PKTLEN_M);

 DBG("%s: sending %#08x length %#08x\n",
  ag->dev->name, desc->data, desc->ctrl);

 ring->curr++;
 if (ring->curr >= AG71XX_TX_RING_SIZE){
  ring->curr = 0;
 }


 ag71xx_wr(ag, AG71XX_REG_TX_CTRL, TX_CTRL_TXE);

    for (i = 0; i < MAX_WAIT; i++)
    {
        if (ag71xx_desc_empty(desc))
            break;
        udelay(10);
    }
    if (i == MAX_WAIT) {
        printf("%s: tx timed out!\n", ag->dev->name);
  return -1;
 }


 ag71xx_wr(ag, AG71XX_REG_TX_CTRL, 0);
 desc->data = 0;
 desc->ctrl = DESC_EMPTY;

 return 0;
}
