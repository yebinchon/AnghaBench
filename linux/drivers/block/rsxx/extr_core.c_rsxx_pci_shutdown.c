
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int n_targets; int irq_lock; } ;
struct pci_dev {int dummy; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int CR_INTR_DMA (int) ;
 int card_shutdown (struct rsxx_cardinfo*) ;
 int dev_info (int ,char*) ;
 struct rsxx_cardinfo* pci_get_drvdata (struct pci_dev*) ;
 int rsxx_detach_dev (struct rsxx_cardinfo*) ;
 int rsxx_disable_ier_and_isr (struct rsxx_cardinfo*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rsxx_pci_shutdown(struct pci_dev *dev)
{
 struct rsxx_cardinfo *card = pci_get_drvdata(dev);
 unsigned long flags;
 int i;

 if (!card)
  return;

 dev_info(CARD_TO_DEV(card), "Shutting down PCI-Flash SSD.\n");

 rsxx_detach_dev(card);

 for (i = 0; i < card->n_targets; i++) {
  spin_lock_irqsave(&card->irq_lock, flags);
  rsxx_disable_ier_and_isr(card, CR_INTR_DMA(i));
  spin_unlock_irqrestore(&card->irq_lock, flags);
 }

 card_shutdown(card);
}
