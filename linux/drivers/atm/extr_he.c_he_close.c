
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct he_vcc {int rc_index; int tx_waitq; int rx_waitq; } ;
struct he_tpd {int status; struct atm_vcc* vcc; int * skb; } ;
struct he_dev {int global_lock; TYPE_4__* cs_stper; int total_bw; } ;
struct TYPE_7__ {scalar_t__ traffic_class; } ;
struct TYPE_6__ {scalar_t__ traffic_class; } ;
struct TYPE_8__ {TYPE_2__ txtp; TYPE_1__ rxtp; } ;
struct atm_vcc {int flags; TYPE_3__ qos; int vci; int vpi; int dev; } ;
struct TYPE_10__ {int sk_wmem_alloc; } ;
struct TYPE_9__ {scalar_t__ inuse; scalar_t__ pcr; } ;



 scalar_t__ ATM_NONE ;

 int ATM_VF_ADDR ;
 int ATM_VF_READY ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 struct he_dev* HE_DEV (int ) ;
 struct he_vcc* HE_VCC (struct atm_vcc*) ;
 int HPRINTK (char*,...) ;
 int HZ ;
 int MAX_RETRY ;
 int RCC_BUSY ;
 int RCC_STAT ;
 int RSR0_CLOSE_CONN ;
 int RXCON_CLOSE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int TPD_EOS ;
 int TPD_INT ;
 scalar_t__ TSR0_CONN_STATE (unsigned int volatile) ;
 int TSR14_DELETE ;
 int TSR1_MCR (int ) ;
 int TSR1_PCR (int ) ;
 int TSR4_FLUSH_CONN ;
 unsigned int volatile TSR4_SESSION_ENDED ;
 struct he_tpd* __alloc_tpd (struct he_dev*) ;
 int __enqueue_tpd (struct he_dev*,struct he_tpd*,unsigned int) ;
 int add_wait_queue (int *,int *) ;
 int clear_bit (int ,int *) ;
 int current ;
 unsigned int he_mkcid (struct he_dev*,int ,int ) ;
 int he_readl (struct he_dev*,int ) ;
 int he_readl_rsr0 (struct he_dev*,unsigned int) ;
 unsigned int he_readl_tsr0 (struct he_dev*,unsigned int) ;
 unsigned int he_readl_tsr4 (struct he_dev*,unsigned int) ;
 int he_writel_mbox (struct he_dev*,unsigned int,int ) ;
 int he_writel_rsr0 (struct he_dev*,int ,unsigned int) ;
 int he_writel_tsr1 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr14_upper (struct he_dev*,int ,unsigned int) ;
 int he_writel_tsr4_upper (struct he_dev*,int ,unsigned int) ;
 int hprintk (char*,int,...) ;
 int kfree (struct he_vcc*) ;
 int msleep (int) ;
 int rate_to_atmf (int) ;
 int refcount_read (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 TYPE_5__* sk_atm (struct atm_vcc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int wait ;
 int wmb () ;

__attribute__((used)) static void
he_close(struct atm_vcc *vcc)
{
 unsigned long flags;
 DECLARE_WAITQUEUE(wait, current);
 struct he_dev *he_dev = HE_DEV(vcc->dev);
 struct he_tpd *tpd;
 unsigned cid;
 struct he_vcc *he_vcc = HE_VCC(vcc);

 int retry = 0, sleep = 1, tx_inuse;

 HPRINTK("close vcc %p %d.%d\n", vcc, vcc->vpi, vcc->vci);

 clear_bit(ATM_VF_READY, &vcc->flags);
 cid = he_mkcid(he_dev, vcc->vpi, vcc->vci);

 if (vcc->qos.rxtp.traffic_class != ATM_NONE) {
  int timeout;

  HPRINTK("close rx cid 0x%x\n", cid);





  spin_lock_irqsave(&he_dev->global_lock, flags);
  while (he_readl(he_dev, RCC_STAT) & RCC_BUSY) {
   HPRINTK("close cid 0x%x RCC_BUSY\n", cid);
   udelay(250);
  }

  set_current_state(TASK_UNINTERRUPTIBLE);
  add_wait_queue(&he_vcc->rx_waitq, &wait);

  he_writel_rsr0(he_dev, RSR0_CLOSE_CONN, cid);
  (void) he_readl_rsr0(he_dev, cid);
  he_writel_mbox(he_dev, cid, RXCON_CLOSE);
  spin_unlock_irqrestore(&he_dev->global_lock, flags);

  timeout = schedule_timeout(30*HZ);

  remove_wait_queue(&he_vcc->rx_waitq, &wait);
  set_current_state(TASK_RUNNING);

  if (timeout == 0)
   hprintk("close rx timeout cid 0x%x\n", cid);

  HPRINTK("close rx cid 0x%x complete\n", cid);

 }

 if (vcc->qos.txtp.traffic_class != ATM_NONE) {
  volatile unsigned tsr4, tsr0;
  int timeout;

  HPRINTK("close tx cid 0x%x\n", cid);
  while (((tx_inuse = refcount_read(&sk_atm(vcc)->sk_wmem_alloc)) > 1) &&
         (retry < 30)) {
   msleep(sleep);
   if (sleep < 250)
    sleep = sleep * 2;

   ++retry;
  }

  if (tx_inuse > 1)
   hprintk("close tx cid 0x%x tx_inuse = %d\n", cid, tx_inuse);



  spin_lock_irqsave(&he_dev->global_lock, flags);
  he_writel_tsr4_upper(he_dev, TSR4_FLUSH_CONN, cid);


  switch (vcc->qos.txtp.traffic_class) {
   case 128:
    he_writel_tsr1(he_dev,
     TSR1_MCR(rate_to_atmf(200000))
     | TSR1_PCR(0), cid);
    break;
   case 129:
    he_writel_tsr14_upper(he_dev, TSR14_DELETE, cid);
    break;
  }
  (void) he_readl_tsr4(he_dev, cid);

  tpd = __alloc_tpd(he_dev);
  if (tpd == ((void*)0)) {
   hprintk("close tx he_alloc_tpd failed cid 0x%x\n", cid);
   goto close_tx_incomplete;
  }
  tpd->status |= TPD_EOS | TPD_INT;
  tpd->skb = ((void*)0);
  tpd->vcc = vcc;
  wmb();

  set_current_state(TASK_UNINTERRUPTIBLE);
  add_wait_queue(&he_vcc->tx_waitq, &wait);
  __enqueue_tpd(he_dev, tpd, cid);
  spin_unlock_irqrestore(&he_dev->global_lock, flags);

  timeout = schedule_timeout(30*HZ);

  remove_wait_queue(&he_vcc->tx_waitq, &wait);
  set_current_state(TASK_RUNNING);

  spin_lock_irqsave(&he_dev->global_lock, flags);

  if (timeout == 0) {
   hprintk("close tx timeout cid 0x%x\n", cid);
   goto close_tx_incomplete;
  }

  while (!((tsr4 = he_readl_tsr4(he_dev, cid)) & TSR4_SESSION_ENDED)) {
   HPRINTK("close tx cid 0x%x !TSR4_SESSION_ENDED (tsr4 = 0x%x)\n", cid, tsr4);
   udelay(250);
  }

  while (TSR0_CONN_STATE(tsr0 = he_readl_tsr0(he_dev, cid)) != 0) {
   HPRINTK("close tx cid 0x%x TSR0_CONN_STATE != 0 (tsr0 = 0x%x)\n", cid, tsr0);
   udelay(250);
  }

close_tx_incomplete:

  if (vcc->qos.txtp.traffic_class == 129) {
   int reg = he_vcc->rc_index;

   HPRINTK("cs_stper reg = %d\n", reg);

   if (he_dev->cs_stper[reg].inuse == 0)
    hprintk("cs_stper[%d].inuse = 0!\n", reg);
   else
    --he_dev->cs_stper[reg].inuse;

   he_dev->total_bw -= he_dev->cs_stper[reg].pcr;
  }
  spin_unlock_irqrestore(&he_dev->global_lock, flags);

  HPRINTK("close tx cid 0x%x complete\n", cid);
 }

 kfree(he_vcc);

 clear_bit(ATM_VF_ADDR, &vcc->flags);
}
