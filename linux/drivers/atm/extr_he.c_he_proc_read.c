
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct he_tpdrq {int dummy; } ;
struct he_rbrq {int dummy; } ;
struct he_rbp {int dummy; } ;
struct he_dev {char* prod_id; int media; int irq_peak; int rbrq_peak; int tbrq_peak; int total_bw; TYPE_2__* atm_dev; TYPE_1__* cs_stper; int global_lock; } ;
struct atm_dev {int dummy; } ;
typedef int loff_t ;
struct TYPE_4__ {int link_rate; } ;
struct TYPE_3__ {int inuse; int pcr; } ;


 int CEC ;
 int CONFIG_IRQ_SIZE ;
 int CONFIG_RBPL_SIZE ;
 int CONFIG_RBRQ_SIZE ;
 int CONFIG_TBRQ_SIZE ;
 int CONFIG_TPDRQ_SIZE ;
 int DCC ;
 int G0_RBPL_S ;
 int G0_RBPL_T ;
 struct he_dev* HE_DEV (struct atm_dev*) ;
 int HE_NUM_CS_STPER ;
 int MCC ;
 int OEC ;
 int RBPL_MASK (scalar_t__) ;
 scalar_t__ he_readl (struct he_dev*,int ) ;
 int inuse ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int
he_proc_read(struct atm_dev *dev, loff_t *pos, char *page)
{
 unsigned long flags;
 struct he_dev *he_dev = HE_DEV(dev);
 int left, i;





 static long mcc = 0, oec = 0, dcc = 0, cec = 0;


 left = *pos;
 if (!left--)
  return sprintf(page, "ATM he driver\n");

 if (!left--)
  return sprintf(page, "%s%s\n\n",
   he_dev->prod_id, he_dev->media & 0x40 ? "SM" : "MM");

 if (!left--)
  return sprintf(page, "Mismatched Cells  VPI/VCI Not Open  Dropped Cells  RCM Dropped Cells\n");

 spin_lock_irqsave(&he_dev->global_lock, flags);
 mcc += he_readl(he_dev, MCC);
 oec += he_readl(he_dev, OEC);
 dcc += he_readl(he_dev, DCC);
 cec += he_readl(he_dev, CEC);
 spin_unlock_irqrestore(&he_dev->global_lock, flags);

 if (!left--)
  return sprintf(page, "%16ld  %16ld  %13ld  %17ld\n\n",
       mcc, oec, dcc, cec);

 if (!left--)
  return sprintf(page, "irq_size = %d  inuse = ?  peak = %d\n",
    CONFIG_IRQ_SIZE, he_dev->irq_peak);

 if (!left--)
  return sprintf(page, "tpdrq_size = %d  inuse = ?\n",
      CONFIG_TPDRQ_SIZE);

 if (!left--)
  return sprintf(page, "rbrq_size = %d  inuse = ?  peak = %d\n",
    CONFIG_RBRQ_SIZE, he_dev->rbrq_peak);

 if (!left--)
  return sprintf(page, "tbrq_size = %d  peak = %d\n",
     CONFIG_TBRQ_SIZE, he_dev->tbrq_peak);
 if (!left--)
  return sprintf(page, "rate controller periods (cbr)\n                 pcr  #vc\n");

 for (i = 0; i < HE_NUM_CS_STPER; ++i)
  if (!left--)
   return sprintf(page, "cs_stper%-2d  %8ld  %3d\n", i,
      he_dev->cs_stper[i].pcr,
      he_dev->cs_stper[i].inuse);

 if (!left--)
  return sprintf(page, "total bw (cbr): %d  (limit %d)\n",
   he_dev->total_bw, he_dev->atm_dev->link_rate * 10 / 9);

 return 0;
}
