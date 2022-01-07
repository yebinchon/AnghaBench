
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct solos_card {scalar_t__ fpga_version; scalar_t__ config_regs; scalar_t__ buffers; struct solos_card* dma_bounce; int tlet; TYPE_2__* dev; } ;
struct pci_dev {int irq; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 scalar_t__ DMA_SUPPORTED ;
 scalar_t__ FPGA_MODE ;
 scalar_t__ IRQ_EN_ADDR ;
 int atm_remove (struct solos_card*) ;
 int free_irq (int ,struct solos_card*) ;
 int gpio_attr_group ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int kfree (struct solos_card*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct solos_card* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_release_regions (struct pci_dev*) ;
 int sysfs_remove_group (int *,int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void fpga_remove(struct pci_dev *dev)
{
 struct solos_card *card = pci_get_drvdata(dev);


 iowrite32(0, card->config_regs + IRQ_EN_ADDR);


 iowrite32(1, card->config_regs + FPGA_MODE);
 (void)ioread32(card->config_regs + FPGA_MODE);

 if (card->fpga_version >= DMA_SUPPORTED)
  sysfs_remove_group(&card->dev->dev.kobj, &gpio_attr_group);

 atm_remove(card);

 free_irq(dev->irq, card);
 tasklet_kill(&card->tlet);

 kfree(card->dma_bounce);


 iowrite32(0, card->config_regs + FPGA_MODE);
 (void)ioread32(card->config_regs + FPGA_MODE);

 pci_iounmap(dev, card->buffers);
 pci_iounmap(dev, card->config_regs);

 pci_release_regions(dev);
 pci_disable_device(dev);

 kfree(card);
}
