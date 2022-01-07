
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta2x11_instance {int dummy; } ;
struct TYPE_3__ {int is_sta2x11; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;


 scalar_t__ STA2X11_AMBA_SIZE ;
 int pci_set_consistent_dma_mask (struct pci_dev*,scalar_t__) ;
 int pci_set_dma_mask (struct pci_dev*,scalar_t__) ;
 int pci_set_master (struct pci_dev*) ;
 struct sta2x11_instance* sta2x11_pdev_to_instance (struct pci_dev*) ;

__attribute__((used)) static void sta2x11_setup_pdev(struct pci_dev *pdev)
{
 struct sta2x11_instance *instance = sta2x11_pdev_to_instance(pdev);

 if (!instance)
  return;
 pci_set_consistent_dma_mask(pdev, STA2X11_AMBA_SIZE - 1);
 pci_set_dma_mask(pdev, STA2X11_AMBA_SIZE - 1);
 pdev->dev.archdata.is_sta2x11 = 1;


 pci_set_master(pdev);
}
