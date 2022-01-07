
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct suni_priv {int dummy; } ;
struct atm_dev {int * phy; int phy_data; } ;
struct TYPE_2__ {unsigned char type; struct atm_dev* dev; } ;


 int ENOMEM ;
 unsigned char GET (int ) ;
 int GFP_KERNEL ;
 int MRI ;
 int MT ;
 TYPE_1__* PRIV (struct atm_dev*) ;
 int PUT (unsigned char,int ) ;
 int REG_CHANGE (int ,int ,int ,int ) ;
 unsigned char SUNI_IDLE_PATTERN ;
 unsigned char SUNI_MRI_RESET ;
 unsigned char SUNI_MRI_TYPE ;
 unsigned char SUNI_MRI_TYPE_SHIFT ;
 unsigned char SUNI_MT_DS27_53 ;
 int SUNI_TACP_IUCHP_CLP ;
 int TACP_IUCHP ;
 int TACP_IUCPOP ;
 int kmalloc (int,int ) ;
 int set_sonet (struct atm_dev*) ;
 int suni_ops ;

int suni_init(struct atm_dev *dev)
{
 unsigned char mri;

 if (!(dev->phy_data = kmalloc(sizeof(struct suni_priv),GFP_KERNEL)))
  return -ENOMEM;
 PRIV(dev)->dev = dev;

 mri = GET(MRI);
 PRIV(dev)->type = (mri & SUNI_MRI_TYPE) >> SUNI_MRI_TYPE_SHIFT;
 PUT(mri | SUNI_MRI_RESET,MRI);
 PUT(mri,MRI);
 PUT((GET(MT) & SUNI_MT_DS27_53),MT);
        set_sonet(dev);
 REG_CHANGE(SUNI_TACP_IUCHP_CLP,0,SUNI_TACP_IUCHP_CLP,
     TACP_IUCHP);
 PUT(SUNI_IDLE_PATTERN,TACP_IUCPOP);
 dev->phy = &suni_ops;

 return 0;
}
