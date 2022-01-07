
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int name; int dev; } ;
struct ag71xx {int napi; } ;
typedef int irqreturn_t ;


 int AG71XX_INT_ERR ;
 int AG71XX_INT_POLL ;
 int AG71XX_INT_RX_BE ;
 int AG71XX_INT_TX_BE ;
 int AG71XX_REG_INT_STATUS ;
 int AG71XX_REG_RX_STATUS ;
 int AG71XX_REG_TX_STATUS ;
 int DBG (char*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RX_STATUS_BE ;
 int TX_STATUS_BE ;
 int ag71xx_debugfs_update_int_stats (struct ag71xx*,int) ;
 int ag71xx_dump_intr (struct ag71xx*,char*,int) ;
 int ag71xx_int_disable (struct ag71xx*,int) ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ likely (int) ;
 int napi_schedule (int *) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ag71xx_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct ag71xx *ag = netdev_priv(dev);
 u32 status;

 status = ag71xx_rr(ag, AG71XX_REG_INT_STATUS);
 ag71xx_dump_intr(ag, "raw", status);

 if (unlikely(!status))
  return IRQ_NONE;

 if (unlikely(status & AG71XX_INT_ERR)) {
  if (status & AG71XX_INT_TX_BE) {
   ag71xx_wr(ag, AG71XX_REG_TX_STATUS, TX_STATUS_BE);
   dev_err(&dev->dev, "TX BUS error\n");
  }
  if (status & AG71XX_INT_RX_BE) {
   ag71xx_wr(ag, AG71XX_REG_RX_STATUS, RX_STATUS_BE);
   dev_err(&dev->dev, "RX BUS error\n");
  }
 }

 if (likely(status & AG71XX_INT_POLL)) {
  ag71xx_int_disable(ag, AG71XX_INT_POLL);
  DBG("%s: enable polling mode\n", dev->name);
  napi_schedule(&ag->napi);
 }

 ag71xx_debugfs_update_int_stats(ag, status);

 return IRQ_HANDLED;
}
