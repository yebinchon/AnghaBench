
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int n_targets; int halt; int disk_id; int regmap; int debugfs_dir; int irq_lock; int event_work; } ;
struct pci_dev {int irq; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int CR_INTR_ALL ;
 int CR_INTR_DMA (int) ;
 int CR_INTR_EVENT ;
 int cancel_work_sync (int *) ;
 int card_shutdown (struct rsxx_cardinfo*) ;
 int debugfs_remove_recursive (int ) ;
 int dev_crit (int ,char*) ;
 int dev_info (int ,char*) ;
 int force_legacy ;
 int free_irq (int ,struct rsxx_cardinfo*) ;
 int ida_free (int *,int ) ;
 int kfree (struct rsxx_cardinfo*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct rsxx_cardinfo* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int rsxx_creg_destroy (struct rsxx_cardinfo*) ;
 int rsxx_destroy_dev (struct rsxx_cardinfo*) ;
 int rsxx_detach_dev (struct rsxx_cardinfo*) ;
 int rsxx_disable_ier_and_isr (struct rsxx_cardinfo*,int ) ;
 int rsxx_disk_ida ;
 int rsxx_dma_destroy (struct rsxx_cardinfo*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rsxx_pci_remove(struct pci_dev *dev)
{
 struct rsxx_cardinfo *card = pci_get_drvdata(dev);
 unsigned long flags;
 int st;
 int i;

 if (!card)
  return;

 dev_info(CARD_TO_DEV(card),
  "Removing PCI-Flash SSD.\n");

 rsxx_detach_dev(card);

 for (i = 0; i < card->n_targets; i++) {
  spin_lock_irqsave(&card->irq_lock, flags);
  rsxx_disable_ier_and_isr(card, CR_INTR_DMA(i));
  spin_unlock_irqrestore(&card->irq_lock, flags);
 }

 st = card_shutdown(card);
 if (st)
  dev_crit(CARD_TO_DEV(card), "Shutdown failed!\n");


 spin_lock_irqsave(&card->irq_lock, flags);
 rsxx_disable_ier_and_isr(card, CR_INTR_EVENT);
 spin_unlock_irqrestore(&card->irq_lock, flags);

 cancel_work_sync(&card->event_work);

 rsxx_destroy_dev(card);
 rsxx_dma_destroy(card);

 spin_lock_irqsave(&card->irq_lock, flags);
 rsxx_disable_ier_and_isr(card, CR_INTR_ALL);
 spin_unlock_irqrestore(&card->irq_lock, flags);


 card->halt = 1;

 debugfs_remove_recursive(card->debugfs_dir);

 free_irq(dev->irq, card);

 if (!force_legacy)
  pci_disable_msi(dev);

 rsxx_creg_destroy(card);

 pci_iounmap(dev, card->regmap);

 pci_disable_device(dev);
 pci_release_regions(dev);

 ida_free(&rsxx_disk_ida, card->disk_id);
 kfree(card);
}
