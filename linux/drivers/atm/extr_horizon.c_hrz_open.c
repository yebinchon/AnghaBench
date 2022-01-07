
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u16 ;
struct atm_trafprm {int traffic_class; } ;
struct atm_qos {int aal; struct atm_trafprm rxtp; struct atm_trafprm txtp; } ;
struct atm_vcc {short vpi; int vci; int flags; void* dev_data; struct atm_qos qos; int dev; } ;
typedef int rounding ;
struct TYPE_9__ {size_t channel; int tx_rate; scalar_t__ aal; unsigned int tx_bucket_bits; int rx_rate; void* tx_xbr_bits; void* tx_scr_bits; void* tx_pcr_bits; } ;
typedef TYPE_1__ hrz_vcc ;
struct TYPE_10__ {int tx_avail; int rx_avail; struct atm_vcc** rxer; int rate_lock; } ;
typedef TYPE_2__ hrz_dev ;


 void* ABR_RATE_TYPE ;





 int ATM_NONE ;


 int ATM_VCI_UNSPEC ;
 int ATM_VF_ADDR ;
 int ATM_VF_READY ;
 short ATM_VPI_UNSPEC ;
 unsigned int BUCKET_MAX_SIZE ;
 void* CBR_RATE_TYPE ;
 void* CLOCK_DISABLE ;
 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_QOS ;
 int DBG_VCC ;
 int DBG_WARN ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* HRZ_DEV (int ) ;
 void* IDLE_RATE_TYPE ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int PRINTD (int,char*,...) ;
 int PRINTK (int ,char*) ;
 void* VBR_RATE_TYPE ;
 scalar_t__ aal0 ;
 scalar_t__ aal34 ;
 scalar_t__ aal5 ;
 int atm_pcr_check (struct atm_trafprm*,int) ;
 int atm_pcr_goal (struct atm_trafprm*) ;
 int check_max_sdu (scalar_t__,struct atm_trafprm*,int ) ;
 int hrz_open_rx (TYPE_2__*,size_t) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int ) ;
 int make_rate (TYPE_2__*,int,int ,void**,int *) ;
 int make_rate_with_tolerance (TYPE_2__*,int,int ,int,void**,int*) ;
 int max_rx_size ;
 int max_tx_size ;
 int round_down ;
 int round_nearest ;
 int round_up ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vpivci_to_channel (size_t*,short,int) ;

__attribute__((used)) static int hrz_open (struct atm_vcc *atm_vcc)
{
  int error;
  u16 channel;

  struct atm_qos * qos;
  struct atm_trafprm * txtp;
  struct atm_trafprm * rxtp;

  hrz_dev * dev = HRZ_DEV(atm_vcc->dev);
  hrz_vcc vcc;
  hrz_vcc * vccp;
  short vpi = atm_vcc->vpi;
  int vci = atm_vcc->vci;
  PRINTD (DBG_FLOW|DBG_VCC, "hrz_open %x %x", vpi, vci);
  error = vpivci_to_channel (&channel, vpi, vci);
  if (error) {
    PRINTD (DBG_WARN|DBG_VCC, "VPI/VCI out of range: %hd/%d", vpi, vci);
    return error;
  }

  vcc.channel = channel;

  vcc.tx_rate = 0x0;

  qos = &atm_vcc->qos;


  switch (qos->aal) {
    case 134:

      PRINTD (DBG_QOS|DBG_VCC, "AAL0");
      vcc.aal = aal0;
      break;
    case 133:

      PRINTD (DBG_QOS|DBG_VCC, "AAL3/4");
      vcc.aal = aal34;
      break;
    case 132:
      PRINTD (DBG_QOS|DBG_VCC, "AAL5");
      vcc.aal = aal5;
      break;
    default:
      PRINTD (DBG_QOS|DBG_VCC, "Bad AAL!");
      return -EINVAL;
  }
  PRINTD (DBG_QOS, "TX:");

  txtp = &qos->txtp;


  vcc.tx_rate = 0;

  vcc.tx_xbr_bits = IDLE_RATE_TYPE;
  vcc.tx_pcr_bits = CLOCK_DISABLE;





  if (txtp->traffic_class != ATM_NONE) {
    error = check_max_sdu (vcc.aal, txtp, max_tx_size);
    if (error) {
      PRINTD (DBG_QOS, "TX max_sdu check failed");
      return error;
    }

    switch (txtp->traffic_class) {
      case 129: {


 vcc.tx_rate = 0;
 make_rate (dev, 1<<30, round_nearest, &vcc.tx_pcr_bits, ((void*)0));
 vcc.tx_xbr_bits = ABR_RATE_TYPE;
 break;
      }
      case 130: {
 int pcr = atm_pcr_goal (txtp);
 rounding r;
 if (!pcr) {





   r = round_down;


   PRINTD (DBG_QOS, "snatching all remaining TX bandwidth");
   pcr = dev->tx_avail;
 } else if (pcr < 0) {
   r = round_down;
   pcr = -pcr;
 } else {
   r = round_up;
 }
 error = make_rate_with_tolerance (dev, pcr, r, 10,
       &vcc.tx_pcr_bits, &vcc.tx_rate);
 if (error) {
   PRINTD (DBG_QOS, "could not make rate from TX PCR");
   return error;
 }

 error = atm_pcr_check (txtp, vcc.tx_rate);
 if (error) {
   PRINTD (DBG_QOS, "TX PCR failed consistency check");
   return error;
 }
 vcc.tx_xbr_bits = CBR_RATE_TYPE;
 break;
      }
      default: {
 PRINTD (DBG_QOS, "unsupported TX traffic class");
 return -EINVAL;
      }
    }
  }



  PRINTD (DBG_QOS, "RX:");

  rxtp = &qos->rxtp;


  vcc.rx_rate = 0;

  if (rxtp->traffic_class != ATM_NONE) {
    error = check_max_sdu (vcc.aal, rxtp, max_rx_size);
    if (error) {
      PRINTD (DBG_QOS, "RX max_sdu check failed");
      return error;
    }
    switch (rxtp->traffic_class) {
      case 129: {

 break;
      }







      case 130: {
 int pcr = atm_pcr_goal (rxtp);
 if (!pcr) {


   PRINTD (DBG_QOS, "snatching all remaining RX bandwidth");
   pcr = dev->rx_avail;
 } else if (pcr < 0) {
   pcr = -pcr;
 }
 vcc.rx_rate = pcr;

 error = atm_pcr_check (rxtp, vcc.rx_rate);
 if (error) {
   PRINTD (DBG_QOS, "RX PCR failed consistency check");
   return error;
 }
 break;
      }
      default: {
 PRINTD (DBG_QOS, "unsupported RX traffic class");
 return -EINVAL;
      }
    }
  }



  if (vcc.aal != aal5) {
    PRINTD (DBG_QOS, "AAL not supported");
    return -EINVAL;
  }


  vccp = kmalloc (sizeof(hrz_vcc), GFP_KERNEL);
  if (!vccp) {
    PRINTK (KERN_ERR, "out of memory!");
    return -ENOMEM;
  }
  *vccp = vcc;


  error = 0;
  spin_lock (&dev->rate_lock);

  if (vcc.tx_rate > dev->tx_avail) {
    PRINTD (DBG_QOS, "not enough TX PCR left");
    error = -EAGAIN;
  }

  if (vcc.rx_rate > dev->rx_avail) {
    PRINTD (DBG_QOS, "not enough RX PCR left");
    error = -EAGAIN;
  }

  if (!error) {

    dev->tx_avail -= vcc.tx_rate;
    dev->rx_avail -= vcc.rx_rate;
    PRINTD (DBG_QOS|DBG_VCC, "reserving %u TX PCR and %u RX PCR",
     vcc.tx_rate, vcc.rx_rate);
  }


  spin_unlock (&dev->rate_lock);
  if (error) {
    PRINTD (DBG_QOS|DBG_VCC, "insufficient cell rate resources");
    kfree (vccp);
    return error;
  }



  set_bit(ATM_VF_ADDR,&atm_vcc->flags);



  if (rxtp->traffic_class != ATM_NONE) {
    if (dev->rxer[channel]) {
      PRINTD (DBG_ERR|DBG_VCC, "VC already open for RX");
      error = -EBUSY;
    }
    if (!error)
      error = hrz_open_rx (dev, channel);
    if (error) {
      kfree (vccp);
      return error;
    }

    dev->rxer[channel] = atm_vcc;
  }


  atm_vcc->dev_data = (void *) vccp;


  set_bit(ATM_VF_READY,&atm_vcc->flags);

  return 0;
}
