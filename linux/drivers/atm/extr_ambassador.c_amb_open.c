
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef unsigned char u16 ;
struct atm_trafprm {int traffic_class; scalar_t__ max_sdu; } ;
struct atm_qos {scalar_t__ aal; struct atm_trafprm rxtp; struct atm_trafprm txtp; } ;
struct atm_vcc {short vpi; int vci; int flags; void* dev_data; struct atm_qos qos; int dev; } ;
typedef int rounding ;
struct TYPE_25__ {void* rate; void* flags; void* vc; } ;
struct TYPE_23__ {void* flags; void* vc; } ;
struct TYPE_27__ {void* rate; void* vc; } ;
struct TYPE_28__ {TYPE_5__ open; TYPE_3__ modify_flags; TYPE_7__ modify_rate; } ;
struct TYPE_29__ {TYPE_8__ args; void* request; } ;
typedef TYPE_9__ command ;
struct TYPE_22__ {unsigned char pool; } ;
struct TYPE_18__ {unsigned char tx_frame_bits; TYPE_2__ rx_info; } ;
typedef TYPE_10__ amb_vcc ;
struct TYPE_19__ {int vcc_sf; struct atm_vcc** rxer; TYPE_4__* txer; TYPE_6__* rxq; } ;
typedef TYPE_11__ amb_dev ;
struct TYPE_26__ {unsigned int buffer_size; scalar_t__ buffers_wanted; } ;
struct TYPE_24__ {int tx_present; unsigned char tx_vc_bits; } ;
struct TYPE_21__ {unsigned char pool; } ;
struct TYPE_20__ {TYPE_1__ rx_info; } ;


 TYPE_11__* AMB_DEV (int ) ;
 TYPE_16__* AMB_VCC (struct atm_vcc*) ;
 scalar_t__ ATM_AAL5 ;

 int ATM_NONE ;

 int ATM_VCI_UNSPEC ;
 int ATM_VF_ADDR ;
 int ATM_VF_READY ;
 short ATM_VPI_UNSPEC ;
 int DBG_FLOW ;
 int DBG_POOL ;
 int DBG_QOS ;
 int DBG_VCC ;
 int DBG_WARN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_WARNING ;
 unsigned char NUM_RX_POOLS ;
 int NUM_VCI_BITS ;
 int NUM_VPI_BITS ;
 int PRINTD (int,char*,...) ;
 int PRINTK (int ,char*) ;
 unsigned char SRB_FLAGS_SHIFT ;
 unsigned char SRB_MODIFY_VC_FLAGS ;
 unsigned char SRB_MODIFY_VC_RATE ;
 unsigned char SRB_OPEN_VC ;
 unsigned char SRB_POOL_SHIFT ;
 unsigned char SRB_RATE_SHIFT ;
 unsigned char TX_FRAME_CAPPED ;
 unsigned char TX_FRAME_NOTCAP ;
 unsigned char TX_UBR ;
 unsigned char TX_UBR_CAPPED ;
 void* atm_pcr_goal (struct atm_trafprm*) ;
 scalar_t__ command_do (TYPE_11__*,TYPE_9__*) ;
 void* cpu_to_be32 (unsigned char) ;
 int fill_rx_pool (TYPE_11__*,unsigned char,int ) ;
 TYPE_10__* kmalloc (int,int ) ;
 int make_rate (int,int ,unsigned char*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* pcr ;
 int round_down ;
 int round_up ;
 scalar_t__ rx_lats ;
 int schedule () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int amb_open (struct atm_vcc * atm_vcc)
{
  int error;

  struct atm_qos * qos;
  struct atm_trafprm * txtp;
  struct atm_trafprm * rxtp;
  u16 tx_rate_bits = -1;
  u16 tx_vc_bits = -1;
  u16 tx_frame_bits = -1;

  amb_dev * dev = AMB_DEV(atm_vcc->dev);
  amb_vcc * vcc;
  unsigned char pool = -1;
  short vpi = atm_vcc->vpi;
  int vci = atm_vcc->vci;

  PRINTD (DBG_FLOW|DBG_VCC, "amb_open %x %x", vpi, vci);
  if (!(0 <= vpi && vpi < (1<<NUM_VPI_BITS) &&
 0 <= vci && vci < (1<<NUM_VCI_BITS))) {
    PRINTD (DBG_WARN|DBG_VCC, "VPI/VCI out of range: %hd/%d", vpi, vci);
    return -EINVAL;
  }

  qos = &atm_vcc->qos;

  if (qos->aal != ATM_AAL5) {
    PRINTD (DBG_QOS, "AAL not supported");
    return -EINVAL;
  }



  PRINTD (DBG_QOS, "TX:");
  txtp = &qos->txtp;
  if (txtp->traffic_class != ATM_NONE) {
    switch (txtp->traffic_class) {
      case 128: {

 int pcr = atm_pcr_goal (txtp);
 if (!pcr) {

   tx_rate_bits = 0;
   tx_vc_bits = TX_UBR;
   tx_frame_bits = TX_FRAME_NOTCAP;
 } else {
   rounding r;
   if (pcr < 0) {
     r = round_down;
     pcr = -pcr;
   } else {
     r = round_up;
   }
   error = make_rate (pcr, r, &tx_rate_bits, ((void*)0));
   if (error)
     return error;
   tx_vc_bits = TX_UBR_CAPPED;
   tx_frame_bits = TX_FRAME_CAPPED;
 }
 break;
      }







      default: {

 PRINTD (DBG_QOS, "request for non-UBR denied");
 return -EINVAL;
      }
    }
    PRINTD (DBG_QOS, "tx_rate_bits=%hx, tx_vc_bits=%hx",
     tx_rate_bits, tx_vc_bits);
  }

  PRINTD (DBG_QOS, "RX:");
  rxtp = &qos->rxtp;
  if (rxtp->traffic_class == ATM_NONE) {

  } else {

    for (pool = 0; pool < NUM_RX_POOLS; ++pool)
      if ((unsigned int) rxtp->max_sdu <= dev->rxq[pool].buffer_size) {
 PRINTD (DBG_VCC|DBG_QOS|DBG_POOL, "chose pool %hu (max_sdu %u <= %u)",
  pool, rxtp->max_sdu, dev->rxq[pool].buffer_size);
 break;
      }
    if (pool == NUM_RX_POOLS) {
      PRINTD (DBG_WARN|DBG_VCC|DBG_QOS|DBG_POOL,
       "no pool suitable for VC (RX max_sdu %d is too large)",
       rxtp->max_sdu);
      return -EINVAL;
    }

    switch (rxtp->traffic_class) {
      case 128: {
 break;
      }







      default: {

 PRINTD (DBG_QOS, "request for non-UBR denied");
 return -EINVAL;
      }
    }
  }


  vcc = kmalloc (sizeof(amb_vcc), GFP_KERNEL);
  if (!vcc) {
    PRINTK (KERN_ERR, "out of memory!");
    return -ENOMEM;
  }
  atm_vcc->dev_data = (void *) vcc;





  set_bit(ATM_VF_ADDR,&atm_vcc->flags);

  if (txtp->traffic_class != ATM_NONE) {
    command cmd;

    vcc->tx_frame_bits = tx_frame_bits;

    mutex_lock(&dev->vcc_sf);
    if (dev->rxer[vci]) {

      cmd.request = cpu_to_be32 (SRB_MODIFY_VC_RATE);
      cmd.args.modify_rate.vc = cpu_to_be32 (vci);
      cmd.args.modify_rate.rate = cpu_to_be32 (tx_rate_bits << SRB_RATE_SHIFT);
      while (command_do (dev, &cmd))
 schedule();

      cmd.request = cpu_to_be32 (SRB_MODIFY_VC_FLAGS);
      cmd.args.modify_flags.vc = cpu_to_be32 (vci);
      cmd.args.modify_flags.flags = cpu_to_be32
 ( (AMB_VCC(dev->rxer[vci])->rx_info.pool << SRB_POOL_SHIFT)
   | (tx_vc_bits << SRB_FLAGS_SHIFT) );
      while (command_do (dev, &cmd))
 schedule();
    } else {

      cmd.request = cpu_to_be32 (SRB_OPEN_VC);
      cmd.args.open.vc = cpu_to_be32 (vci);
      cmd.args.open.flags = cpu_to_be32 (tx_vc_bits << SRB_FLAGS_SHIFT);
      cmd.args.open.rate = cpu_to_be32 (tx_rate_bits << SRB_RATE_SHIFT);
      while (command_do (dev, &cmd))
 schedule();
    }
    dev->txer[vci].tx_present = 1;
    mutex_unlock(&dev->vcc_sf);
  }

  if (rxtp->traffic_class != ATM_NONE) {
    command cmd;

    vcc->rx_info.pool = pool;

    mutex_lock(&dev->vcc_sf);

    if (!dev->rxq[pool].buffers_wanted)
      dev->rxq[pool].buffers_wanted = rx_lats;
    dev->rxq[pool].buffers_wanted += 1;
    fill_rx_pool (dev, pool, GFP_KERNEL);

    if (dev->txer[vci].tx_present) {


      cmd.request = cpu_to_be32 (SRB_MODIFY_VC_FLAGS);
      cmd.args.modify_flags.vc = cpu_to_be32 (vci);
      cmd.args.modify_flags.flags = cpu_to_be32
 ( (pool << SRB_POOL_SHIFT)
   | (dev->txer[vci].tx_vc_bits << SRB_FLAGS_SHIFT) );
    } else {

      cmd.request = cpu_to_be32 (SRB_OPEN_VC);
      cmd.args.open.vc = cpu_to_be32 (vci);
      cmd.args.open.flags = cpu_to_be32 (pool << SRB_POOL_SHIFT);
      cmd.args.open.rate = cpu_to_be32 (0);
    }
    while (command_do (dev, &cmd))
      schedule();

    dev->rxer[vci] = atm_vcc;
    mutex_unlock(&dev->vcc_sf);
  }


  set_bit(ATM_VF_READY,&atm_vcc->flags);

  return 0;
}
