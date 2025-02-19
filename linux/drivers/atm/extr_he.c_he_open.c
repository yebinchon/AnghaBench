
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct he_vcc {int rc_index; int tx_waitq; int rx_waitq; scalar_t__ pdu_len; int buffers; } ;
struct he_dev {int total_bw; int global_lock; TYPE_4__* cs_stper; TYPE_3__* atm_dev; } ;
struct TYPE_7__ {scalar_t__ traffic_class; } ;
struct TYPE_11__ {scalar_t__ traffic_class; } ;
struct TYPE_8__ {int aal; TYPE_1__ rxtp; TYPE_5__ txtp; } ;
struct atm_vcc {short vpi; int vci; int flags; TYPE_2__ qos; struct he_vcc* dev_data; int dev; } ;
struct TYPE_12__ {int rx_waitq; } ;
struct TYPE_10__ {int pcr; int inuse; } ;
struct TYPE_9__ {int link_rate; } ;





 scalar_t__ ATM_NONE ;
 int ATM_NOT_RSV_VCI ;

 int ATM_VCI_UNSPEC ;
 int ATM_VF_ADDR ;
 int ATM_VF_READY ;
 short ATM_VPI_UNSPEC ;
 int CS_STPER0 ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct he_dev* HE_DEV (int ) ;
 unsigned int HE_NUM_CS_STPER ;
 TYPE_6__* HE_VCC (struct atm_vcc*) ;
 int HPRINTK (char*,...) ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int RSR0_AAL5 ;
 unsigned int RSR0_EPD_ENABLE ;
 unsigned int RSR0_OPEN_CONN ;
 unsigned int RSR0_PPD_ENABLE ;
 unsigned int RSR0_RAWCELL ;
 unsigned int RSR0_START_PDU ;
 unsigned int RSR0_TCP_CKSUM ;
 unsigned int RSR1_GROUP (int ) ;
 unsigned int RSR1_RBPL_ONLY ;
 unsigned int RSR4_GROUP (int ) ;
 unsigned int RSR4_RBPL_ONLY ;
 unsigned int TSR0_AAL0_SDU ;
 unsigned int TSR0_AAL5 ;
 unsigned int TSR0_CBR ;
 scalar_t__ TSR0_CONN_STATE (unsigned int) ;
 unsigned int TSR0_GROUP (int ) ;
 unsigned int TSR0_RC_INDEX (unsigned int) ;
 unsigned int TSR0_UBR ;
 unsigned int TSR0_UPDATE_GER ;
 unsigned int TSR0_USE_WMIN ;
 int TSR1_MCR (int ) ;
 int TSR1_PCR (int ) ;
 int TSR2_ACR (int ) ;
 unsigned int TSR4_AAL0_SDU ;
 unsigned int TSR4_AAL5 ;
 int TSR9_OPEN_CONN ;
 int atm_pcr_goal (TYPE_5__*) ;
 int clear_bit (int ,int *) ;
 int he_is622 (struct he_dev*) ;
 unsigned int he_mkcid (struct he_dev*,short,int) ;
 unsigned int he_readl_rsr0 (struct he_dev*,unsigned int) ;
 unsigned int he_readl_tsr0 (struct he_dev*,unsigned int) ;
 int he_writel_mbox (struct he_dev*,int ,int ) ;
 int he_writel_rsr0 (struct he_dev*,unsigned int,unsigned int) ;
 int he_writel_rsr1 (struct he_dev*,unsigned int,unsigned int) ;
 int he_writel_rsr4 (struct he_dev*,unsigned int,unsigned int) ;
 int he_writel_tsr0 (struct he_dev*,unsigned int,unsigned int) ;
 int he_writel_tsr1 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr10 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr11 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr12 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr13 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr14 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr2 (struct he_dev*,int ,unsigned int) ;
 int he_writel_tsr3 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr4 (struct he_dev*,unsigned int,unsigned int) ;
 int he_writel_tsr5 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr6 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr7 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr8 (struct he_dev*,int,unsigned int) ;
 int he_writel_tsr9 (struct he_dev*,int ,unsigned int) ;
 int hprintk (char*,...) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct he_vcc*) ;
 struct he_vcc* kmalloc (int,int ) ;
 int rate_to_atmf (int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
he_open(struct atm_vcc *vcc)
{
 unsigned long flags;
 struct he_dev *he_dev = HE_DEV(vcc->dev);
 struct he_vcc *he_vcc;
 int err = 0;
 unsigned cid, rsr0, rsr1, rsr4, tsr0, tsr0_aal, tsr4, period, reg, clock;
 short vpi = vcc->vpi;
 int vci = vcc->vci;

 if (vci == ATM_VCI_UNSPEC || vpi == ATM_VPI_UNSPEC)
  return 0;

 HPRINTK("open vcc %p %d.%d\n", vcc, vpi, vci);

 set_bit(ATM_VF_ADDR, &vcc->flags);

 cid = he_mkcid(he_dev, vpi, vci);

 he_vcc = kmalloc(sizeof(struct he_vcc), GFP_ATOMIC);
 if (he_vcc == ((void*)0)) {
  hprintk("unable to allocate he_vcc during open\n");
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&he_vcc->buffers);
 he_vcc->pdu_len = 0;
 he_vcc->rc_index = -1;

 init_waitqueue_head(&he_vcc->rx_waitq);
 init_waitqueue_head(&he_vcc->tx_waitq);

 vcc->dev_data = he_vcc;

 if (vcc->qos.txtp.traffic_class != ATM_NONE) {
  int pcr_goal;

  pcr_goal = atm_pcr_goal(&vcc->qos.txtp);
  if (pcr_goal == 0)
   pcr_goal = he_dev->atm_dev->link_rate;
  if (pcr_goal < 0)
   pcr_goal = -pcr_goal;

  HPRINTK("open tx cid 0x%x pcr_goal %d\n", cid, pcr_goal);

  switch (vcc->qos.aal) {
   case 130:
    tsr0_aal = TSR0_AAL5;
    tsr4 = TSR4_AAL5;
    break;
   case 131:
    tsr0_aal = TSR0_AAL0_SDU;
    tsr4 = TSR4_AAL0_SDU;
    break;
   default:
    err = -EINVAL;
    goto open_failed;
  }

  spin_lock_irqsave(&he_dev->global_lock, flags);
  tsr0 = he_readl_tsr0(he_dev, cid);
  spin_unlock_irqrestore(&he_dev->global_lock, flags);

  if (TSR0_CONN_STATE(tsr0) != 0) {
   hprintk("cid 0x%x not idle (tsr0 = 0x%x)\n", cid, tsr0);
   err = -EBUSY;
   goto open_failed;
  }

  switch (vcc->qos.txtp.traffic_class) {
   case 128:


    tsr0 = TSR0_UBR | TSR0_GROUP(0) | tsr0_aal |
     TSR0_USE_WMIN | TSR0_UPDATE_GER;
    break;

   case 129:



    if ((he_dev->total_bw + pcr_goal)
     > (he_dev->atm_dev->link_rate * 9 / 10))
    {
     err = -EBUSY;
     goto open_failed;
    }

    spin_lock_irqsave(&he_dev->global_lock, flags);


    for (reg = 0; reg < HE_NUM_CS_STPER; ++reg)
     if (he_dev->cs_stper[reg].inuse == 0 ||
         he_dev->cs_stper[reg].pcr == pcr_goal)
       break;

    if (reg == HE_NUM_CS_STPER) {
     err = -EBUSY;
     spin_unlock_irqrestore(&he_dev->global_lock, flags);
     goto open_failed;
    }

    he_dev->total_bw += pcr_goal;

    he_vcc->rc_index = reg;
    ++he_dev->cs_stper[reg].inuse;
    he_dev->cs_stper[reg].pcr = pcr_goal;

    clock = he_is622(he_dev) ? 66667000 : 50000000;
    period = clock / pcr_goal;

    HPRINTK("rc_index = %d period = %d\n",
        reg, period);

    he_writel_mbox(he_dev, rate_to_atmf(period/2),
       CS_STPER0 + reg);
    spin_unlock_irqrestore(&he_dev->global_lock, flags);

    tsr0 = TSR0_CBR | TSR0_GROUP(0) | tsr0_aal |
       TSR0_RC_INDEX(reg);

    break;
   default:
    err = -EINVAL;
    goto open_failed;
  }

  spin_lock_irqsave(&he_dev->global_lock, flags);

  he_writel_tsr0(he_dev, tsr0, cid);
  he_writel_tsr4(he_dev, tsr4 | 1, cid);
  he_writel_tsr1(he_dev, TSR1_MCR(rate_to_atmf(0)) |
     TSR1_PCR(rate_to_atmf(pcr_goal)), cid);
  he_writel_tsr2(he_dev, TSR2_ACR(rate_to_atmf(pcr_goal)), cid);
  he_writel_tsr9(he_dev, TSR9_OPEN_CONN, cid);

  he_writel_tsr3(he_dev, 0x0, cid);
  he_writel_tsr5(he_dev, 0x0, cid);
  he_writel_tsr6(he_dev, 0x0, cid);
  he_writel_tsr7(he_dev, 0x0, cid);
  he_writel_tsr8(he_dev, 0x0, cid);
  he_writel_tsr10(he_dev, 0x0, cid);
  he_writel_tsr11(he_dev, 0x0, cid);
  he_writel_tsr12(he_dev, 0x0, cid);
  he_writel_tsr13(he_dev, 0x0, cid);
  he_writel_tsr14(he_dev, 0x0, cid);
  (void) he_readl_tsr0(he_dev, cid);
  spin_unlock_irqrestore(&he_dev->global_lock, flags);
 }

 if (vcc->qos.rxtp.traffic_class != ATM_NONE) {
  unsigned aal;

  HPRINTK("open rx cid 0x%x (rx_waitq %p)\n", cid,
       &HE_VCC(vcc)->rx_waitq);

  switch (vcc->qos.aal) {
   case 130:
    aal = RSR0_AAL5;
    break;
   case 131:
    aal = RSR0_RAWCELL;
    break;
   default:
    err = -EINVAL;
    goto open_failed;
  }

  spin_lock_irqsave(&he_dev->global_lock, flags);

  rsr0 = he_readl_rsr0(he_dev, cid);
  if (rsr0 & RSR0_OPEN_CONN) {
   spin_unlock_irqrestore(&he_dev->global_lock, flags);

   hprintk("cid 0x%x not idle (rsr0 = 0x%x)\n", cid, rsr0);
   err = -EBUSY;
   goto open_failed;
  }

  rsr1 = RSR1_GROUP(0) | RSR1_RBPL_ONLY;
  rsr4 = RSR4_GROUP(0) | RSR4_RBPL_ONLY;
  rsr0 = vcc->qos.rxtp.traffic_class == 128 ?
    (RSR0_EPD_ENABLE|RSR0_PPD_ENABLE) : 0;






  he_writel_rsr4(he_dev, rsr4, cid);
  he_writel_rsr1(he_dev, rsr1, cid);


  he_writel_rsr0(he_dev,
   rsr0 | RSR0_START_PDU | RSR0_OPEN_CONN | aal, cid);
  (void) he_readl_rsr0(he_dev, cid);

  spin_unlock_irqrestore(&he_dev->global_lock, flags);
 }

open_failed:

 if (err) {
  kfree(he_vcc);
  clear_bit(ATM_VF_ADDR, &vcc->flags);
 }
 else
  set_bit(ATM_VF_READY, &vcc->flags);

 return err;
}
