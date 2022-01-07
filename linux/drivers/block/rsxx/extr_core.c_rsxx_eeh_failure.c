
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rsxx_cardinfo {int eeh_state; int halt; int n_targets; TYPE_1__* ctrl; } ;
struct pci_dev {int dev; } ;
struct TYPE_3__ {int id; int queue_lock; int queue; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int COMPLETE_DMA ;
 int dev_err (int *,char*) ;
 int dev_info (int ,char*,int,int ) ;
 struct rsxx_cardinfo* pci_get_drvdata (struct pci_dev*) ;
 int rsxx_cleanup_dma_queue (TYPE_1__*,int *,int ) ;
 scalar_t__ rsxx_dma_cancel (TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void rsxx_eeh_failure(struct pci_dev *dev)
{
 struct rsxx_cardinfo *card = pci_get_drvdata(dev);
 int i;
 int cnt = 0;

 dev_err(&dev->dev, "IBM Flash Adapter PCI: disabling failed card.\n");

 card->eeh_state = 1;
 card->halt = 1;

 for (i = 0; i < card->n_targets; i++) {
  spin_lock_bh(&card->ctrl[i].queue_lock);
  cnt = rsxx_cleanup_dma_queue(&card->ctrl[i],
          &card->ctrl[i].queue,
          COMPLETE_DMA);
  spin_unlock_bh(&card->ctrl[i].queue_lock);

  cnt += rsxx_dma_cancel(&card->ctrl[i]);

  if (cnt)
   dev_info(CARD_TO_DEV(card),
    "Freed %d queued DMAs on channel %d\n",
    cnt, card->ctrl[i].id);
 }
}
