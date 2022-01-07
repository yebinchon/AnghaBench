
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct eni_dev {int tx_wait; int lock; int events; } ;
struct atm_dev {int dummy; } ;


 int DPRINTK (char*,struct atm_dev*) ;
 struct eni_dev* ENI_DEV (struct atm_dev*) ;
 int EVENT (char*,int ,int ) ;
 int MID_DMA_ERR_ACK ;
 int MID_RX_DMA_COMPLETE ;
 int MID_SERVICE ;
 int MID_TX_COMPLETE ;
 int MID_TX_DMA_COMPLETE ;
 int MID_TX_DMA_OVFL ;
 int MID_TX_IDENT_MISM ;
 int bug_int (struct atm_dev*,int) ;
 int dequeue_rx (struct atm_dev*) ;
 int dequeue_tx (struct atm_dev*) ;
 int get_service (struct atm_dev*) ;
 int poll_rx (struct atm_dev*) ;
 int poll_tx (struct atm_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_complete ;
 int wake_up (int *) ;
 int xchg (int *,int ) ;

__attribute__((used)) static void eni_tasklet(unsigned long data)
{
 struct atm_dev *dev = (struct atm_dev *) data;
 struct eni_dev *eni_dev = ENI_DEV(dev);
 unsigned long flags;
 u32 events;

 DPRINTK("eni_tasklet (dev %p)\n",dev);
 spin_lock_irqsave(&eni_dev->lock,flags);
 events = xchg(&eni_dev->events,0);
 spin_unlock_irqrestore(&eni_dev->lock,flags);
 if (events & MID_RX_DMA_COMPLETE) {
  EVENT("INT: RX DMA complete, starting dequeue_rx\n",0,0);
  dequeue_rx(dev);
  EVENT("dequeue_rx done, starting poll_rx\n",0,0);
  poll_rx(dev);
  EVENT("poll_rx done\n",0,0);

 }
 if (events & MID_SERVICE) {
  EVENT("INT: service, starting get_service\n",0,0);
  get_service(dev);
  EVENT("get_service done, starting poll_rx\n",0,0);
  poll_rx(dev);
  EVENT("poll_rx done\n",0,0);
 }
  if (events & MID_TX_DMA_COMPLETE) {
  EVENT("INT: TX DMA COMPLETE\n",0,0);
  dequeue_tx(dev);
 }
 if (events & MID_TX_COMPLETE) {
  EVENT("INT: TX COMPLETE\n",0,0);
  tx_complete++;
  wake_up(&eni_dev->tx_wait);

 }
 if (events & (MID_DMA_ERR_ACK | MID_TX_IDENT_MISM | MID_TX_DMA_OVFL)) {
  EVENT("bug interrupt\n",0,0);
  bug_int(dev,events);
 }
 poll_tx(dev);
}
