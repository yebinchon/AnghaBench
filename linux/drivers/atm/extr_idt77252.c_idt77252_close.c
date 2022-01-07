
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int queue; } ;
struct TYPE_10__ {TYPE_5__ rx_pool; } ;
struct vc_map {unsigned long index; scalar_t__ class; size_t scd_index; TYPE_7__* scq; scalar_t__ ntste; int lock; TYPE_6__* estimator; int * tx_vcc; int flags; TYPE_2__ rcv; int * rx_vcc; } ;
struct idt77252_dev {unsigned long rct_base; int mutex; int ** scd2vc; int tst_free; int name; int cmd_lock; } ;
struct TYPE_11__ {scalar_t__ traffic_class; } ;
struct TYPE_9__ {scalar_t__ traffic_class; } ;
struct TYPE_12__ {TYPE_3__ txtp; TYPE_1__ rxtp; } ;
struct atm_vcc {int vci; TYPE_4__ qos; int flags; int vpi; struct vc_map* dev_data; struct atm_dev* dev; } ;
struct atm_dev {struct idt77252_dev* dev_data; } ;
struct TYPE_15__ {int used; } ;
struct TYPE_14__ {int timer; } ;


 scalar_t__ ATM_NONE ;
 int ATM_VF_READY ;
 int DPRINTK (char*,int ) ;
 int IPRINTK (char*,int ,unsigned long,int ,int) ;
 unsigned long SAR_CMD_CLOSE_CONNECTION ;
 int SAR_REG_CMD ;
 int SAR_REG_TCMDQ ;
 unsigned long SAR_SRAM_RCT_SIZE ;
 scalar_t__ SCHED_CBR ;
 unsigned long TCMDQ_HALT ;
 int VCF_IDLE ;
 int VCF_RSV ;
 int VCF_RX ;
 int VCF_TX ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int clear_scd (struct idt77252_dev*,TYPE_7__*,scalar_t__) ;
 int clear_tst (struct idt77252_dev*,struct vc_map*) ;
 int del_timer (int *) ;
 int free_scq (struct idt77252_dev*,TYPE_7__*) ;
 int kfree (TYPE_6__*) ;
 unsigned long msleep_interruptible (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ,scalar_t__) ;
 int recycle_rx_pool_skb (struct idt77252_dev*,TYPE_5__*) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waitfor_idle (struct idt77252_dev*) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void
idt77252_close(struct atm_vcc *vcc)
{
 struct atm_dev *dev = vcc->dev;
 struct idt77252_dev *card = dev->dev_data;
 struct vc_map *vc = vcc->dev_data;
 unsigned long flags;
 unsigned long addr;
 unsigned long timeout;

 mutex_lock(&card->mutex);

 IPRINTK("%s: idt77252_close: vc = %d (%d.%d)\n",
  card->name, vc->index, vcc->vpi, vcc->vci);

 clear_bit(ATM_VF_READY, &vcc->flags);

 if (vcc->qos.rxtp.traffic_class != ATM_NONE) {

  spin_lock_irqsave(&vc->lock, flags);
  clear_bit(VCF_RX, &vc->flags);
  vc->rx_vcc = ((void*)0);
  spin_unlock_irqrestore(&vc->lock, flags);

  if ((vcc->vci == 3) || (vcc->vci == 4))
   goto done;

  addr = card->rct_base + vc->index * SAR_SRAM_RCT_SIZE;

  spin_lock_irqsave(&card->cmd_lock, flags);
  writel(SAR_CMD_CLOSE_CONNECTION | (addr << 2), SAR_REG_CMD);
  waitfor_idle(card);
  spin_unlock_irqrestore(&card->cmd_lock, flags);

  if (skb_queue_len(&vc->rcv.rx_pool.queue) != 0) {
   DPRINTK("%s: closing a VC with pending rx buffers.\n",
    card->name);

   recycle_rx_pool_skb(card, &vc->rcv.rx_pool);
  }
 }

done:
 if (vcc->qos.txtp.traffic_class != ATM_NONE) {

  spin_lock_irqsave(&vc->lock, flags);
  clear_bit(VCF_TX, &vc->flags);
  clear_bit(VCF_IDLE, &vc->flags);
  clear_bit(VCF_RSV, &vc->flags);
  vc->tx_vcc = ((void*)0);

  if (vc->estimator) {
   del_timer(&vc->estimator->timer);
   kfree(vc->estimator);
   vc->estimator = ((void*)0);
  }
  spin_unlock_irqrestore(&vc->lock, flags);

  timeout = 5 * 1000;
  while (atomic_read(&vc->scq->used) > 0) {
   timeout = msleep_interruptible(timeout);
   if (!timeout) {
    pr_warn("%s: SCQ drain timeout: %u used\n",
     card->name, atomic_read(&vc->scq->used));
    break;
   }
  }

  writel(TCMDQ_HALT | vc->index, SAR_REG_TCMDQ);
  clear_scd(card, vc->scq, vc->class);

  if (vc->class == SCHED_CBR) {
   clear_tst(card, vc);
   card->tst_free += vc->ntste;
   vc->ntste = 0;
  }

  card->scd2vc[vc->scd_index] = ((void*)0);
  free_scq(card, vc->scq);
 }

 mutex_unlock(&card->mutex);
}
