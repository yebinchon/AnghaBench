
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uPD98402_priv {int dummy; } ;
struct k_sonet_stats {int dummy; } ;
struct atm_dev {int dev_data; } ;
struct TYPE_3__ {int rx_cells; int tx_cells; int corr_hcs; } ;
struct TYPE_4__ {TYPE_1__ sonet_stats; int lock; } ;


 int DPRINTK (char*) ;
 int ENOMEM ;
 int GET (int ) ;
 int GFP_KERNEL ;
 int PCMR ;
 int PCOCR ;
 int PCOMR ;
 int PCR ;
 int PICR ;
 int PIMR ;
 TYPE_2__* PRIV (struct atm_dev*) ;
 int PUT (int,int ) ;
 int atomic_set (int *,int) ;
 int fetch_stats (struct atm_dev*,int *,int) ;
 int kmalloc (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int spin_lock_init (int *) ;
 int uPD98402_INT_ALM ;
 int uPD98402_INT_LOS ;
 int uPD98402_INT_PFM ;
 int uPD98402_INT_RFO ;
 int uPD98402_PCO_HECC ;
 int uPD98402_PFM_FJ ;

__attribute__((used)) static int uPD98402_start(struct atm_dev *dev)
{
 DPRINTK("phy_start\n");
 if (!(dev->dev_data = kmalloc(sizeof(struct uPD98402_priv),GFP_KERNEL)))
  return -ENOMEM;
 spin_lock_init(&PRIV(dev)->lock);
 memset(&PRIV(dev)->sonet_stats,0,sizeof(struct k_sonet_stats));
 (void) GET(PCR);
 PUT(uPD98402_PFM_FJ,PCMR);
 (void) GET(PCOCR);
 PUT(~uPD98402_PCO_HECC,PCOMR);
 (void) GET(PICR);
 PUT(~(uPD98402_INT_PFM | uPD98402_INT_ALM | uPD98402_INT_RFO |
   uPD98402_INT_LOS),PIMR);
 (void) fetch_stats(dev,((void*)0),1);
 atomic_set(&PRIV(dev)->sonet_stats.corr_hcs,-1);
 atomic_set(&PRIV(dev)->sonet_stats.tx_cells,-1);
 atomic_set(&PRIV(dev)->sonet_stats.rx_cells,-1);
 return 0;
}
