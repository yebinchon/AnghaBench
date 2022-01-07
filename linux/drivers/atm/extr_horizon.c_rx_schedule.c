
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct sk_buff {int len; int data; } ;
struct atm_vcc {int (* push ) (struct atm_vcc*,struct sk_buff*) ;TYPE_2__* stats; } ;
struct TYPE_14__ {unsigned int rx_bytes; unsigned int rx_regions; unsigned int rx_addr; int flags; int rx_channel; struct sk_buff* rx_skb; TYPE_1__* rx_iovec; } ;
typedef TYPE_3__ hrz_dev ;
struct TYPE_13__ {int rx; } ;
struct TYPE_12__ {unsigned int iov_base; unsigned int iov_len; } ;
struct TYPE_11__ {struct atm_vcc* vcc; } ;


 TYPE_10__* ATM_SKB (struct sk_buff*) ;
 int DATA_PORT_OFF ;
 int DBG_BUS ;
 int DBG_ERR ;
 int DBG_RX ;
 int DBG_SKB ;
 int DBG_WARN ;
 int FLUSH_RX_CHANNEL (TYPE_3__*,int ) ;
 int MASTER_RX_ADDR_REG_OFF ;
 int MASTER_RX_COUNT_REG_OFF ;
 unsigned int MAX_PIO_COUNT ;
 unsigned int MAX_TRANSFER_COUNT ;
 int PRINTD (int,char*,...) ;
 int YELLOW_LED_ON (TYPE_3__*) ;
 int __net_timestamp (struct sk_buff*) ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int dump_skb (char*,int ,struct sk_buff*) ;
 int hrz_kfree_skb (struct sk_buff*) ;
 scalar_t__ rd_regl (TYPE_3__*,int ) ;
 int rds_regb (TYPE_3__*,int ,unsigned int,unsigned int) ;
 int rx_busy ;
 int spin_count ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 unsigned int virt_to_bus (unsigned int) ;
 int wr_regl (TYPE_3__*,int ,unsigned int) ;

__attribute__((used)) static void rx_schedule (hrz_dev * dev, int irq) {
  unsigned int rx_bytes;

  int pio_instead = 0;

  pio_instead = 1;
  while (pio_instead) {


    rx_bytes = dev->rx_bytes;
    if (rx_bytes) {

      if (rx_bytes <= MAX_PIO_COUNT) {
 PRINTD (DBG_RX|DBG_BUS, "(pio)");
 pio_instead = 1;
      }
      if (rx_bytes <= MAX_TRANSFER_COUNT) {
 PRINTD (DBG_RX|DBG_BUS, "(simple or last multi)");
 dev->rx_bytes = 0;
      } else {
 PRINTD (DBG_RX|DBG_BUS, "(continuing multi)");
 dev->rx_bytes = rx_bytes - MAX_TRANSFER_COUNT;
 rx_bytes = MAX_TRANSFER_COUNT;
      }
    } else {





      unsigned int rx_regions = 0;


      if (rx_regions) {
      } else {


 struct sk_buff * skb = dev->rx_skb;


 FLUSH_RX_CHANNEL (dev, dev->rx_channel);

 dump_skb ("<<<", dev->rx_channel, skb);

 PRINTD (DBG_RX|DBG_SKB, "push %p %u", skb->data, skb->len);

 {
   struct atm_vcc * vcc = ATM_SKB(skb)->vcc;

   atomic_inc(&vcc->stats->rx);
   __net_timestamp(skb);

   vcc->push (vcc, skb);
 }
      }
    }


    if (rx_bytes) {
      if (pio_instead) {
 if (irq)
   wr_regl (dev, MASTER_RX_COUNT_REG_OFF, 0);
 rds_regb (dev, DATA_PORT_OFF, dev->rx_addr, rx_bytes);
      } else {
 wr_regl (dev, MASTER_RX_ADDR_REG_OFF, virt_to_bus (dev->rx_addr));
 wr_regl (dev, MASTER_RX_COUNT_REG_OFF, rx_bytes);
      }
      dev->rx_addr += rx_bytes;
    } else {
      if (irq)
 wr_regl (dev, MASTER_RX_COUNT_REG_OFF, 0);

      YELLOW_LED_ON(dev);
      clear_bit (rx_busy, &dev->flags);
      PRINTD (DBG_RX, "cleared rx_busy for dev %p", dev);
    }
    irq = 0;
  }
  return;

}
