
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int state; } ;


 int ZPCI_FN_STATE_ONLINE ;
 int ZPCI_NR_DMA_SPACES ;
 int clp_disable_fh (struct zpci_dev*) ;
 int clp_enable_fh (struct zpci_dev*,int ) ;
 int zpci_dma_init_device (struct zpci_dev*) ;

int zpci_enable_device(struct zpci_dev *zdev)
{
 int rc;

 rc = clp_enable_fh(zdev, ZPCI_NR_DMA_SPACES);
 if (rc)
  goto out;

 rc = zpci_dma_init_device(zdev);
 if (rc)
  goto out_dma;

 zdev->state = ZPCI_FN_STATE_ONLINE;
 return 0;

out_dma:
 clp_disable_fh(zdev);
out:
 return rc;
}
