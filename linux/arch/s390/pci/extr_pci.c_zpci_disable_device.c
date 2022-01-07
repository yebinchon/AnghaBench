
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int dummy; } ;


 int clp_disable_fh (struct zpci_dev*) ;
 int zpci_dma_exit_device (struct zpci_dev*) ;

int zpci_disable_device(struct zpci_dev *zdev)
{
 zpci_dma_exit_device(zdev);
 return clp_disable_fh(zdev);
}
