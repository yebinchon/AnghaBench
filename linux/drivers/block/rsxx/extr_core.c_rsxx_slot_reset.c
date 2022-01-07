
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rsxx_cardinfo {int n_targets; TYPE_3__* ctrl; int dev; int irq_lock; scalar_t__ eeh_state; scalar_t__ regmap; scalar_t__ config_valid; } ;
struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;
struct TYPE_5__ {int dma_addr; scalar_t__ buf; } ;
struct TYPE_4__ {int dma_addr; scalar_t__ buf; } ;
struct TYPE_6__ {TYPE_2__ cmd; TYPE_1__ status; int issue_dma_work; int issue_wq; int queue_lock; int queue; } ;


 int COMMAND_BUFFER_SIZE8 ;
 int CR_INTR_ALL_C ;
 int CR_INTR_ALL_G ;
 scalar_t__ ISR ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int RSXX_MAX_TARGETS ;
 int STATUS_BUFFER_SIZE8 ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int ioread32 (scalar_t__) ;
 scalar_t__ list_empty (int *) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_free_consistent (int ,int ,scalar_t__,int ) ;
 struct rsxx_cardinfo* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int queue_work (int ,int *) ;
 int rsxx_dma_configure (struct rsxx_cardinfo*) ;
 int rsxx_dma_queue_reset (struct rsxx_cardinfo*) ;
 int rsxx_eeh_failure (struct pci_dev*) ;
 int rsxx_eeh_fifo_flush_poll (struct rsxx_cardinfo*) ;
 int rsxx_enable_ier_and_isr (struct rsxx_cardinfo*,int ) ;
 int rsxx_hw_buffers_init (struct pci_dev*,TYPE_3__*) ;
 int rsxx_kick_creg_queue (struct rsxx_cardinfo*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static pci_ers_result_t rsxx_slot_reset(struct pci_dev *dev)
{
 struct rsxx_cardinfo *card = pci_get_drvdata(dev);
 unsigned long flags;
 int i;
 int st;

 dev_warn(&dev->dev,
  "IBM Flash Adapter PCI: recovering from slot reset.\n");

 st = pci_enable_device(dev);
 if (st)
  goto failed_hw_setup;

 pci_set_master(dev);

 st = rsxx_eeh_fifo_flush_poll(card);
 if (st)
  goto failed_hw_setup;

 rsxx_dma_queue_reset(card);

 for (i = 0; i < card->n_targets; i++) {
  st = rsxx_hw_buffers_init(dev, &card->ctrl[i]);
  if (st)
   goto failed_hw_buffers_init;
 }

 if (card->config_valid)
  rsxx_dma_configure(card);


 st = ioread32(card->regmap + ISR);

 card->eeh_state = 0;

 spin_lock_irqsave(&card->irq_lock, flags);
 if (card->n_targets & RSXX_MAX_TARGETS)
  rsxx_enable_ier_and_isr(card, CR_INTR_ALL_G);
 else
  rsxx_enable_ier_and_isr(card, CR_INTR_ALL_C);
 spin_unlock_irqrestore(&card->irq_lock, flags);

 rsxx_kick_creg_queue(card);

 for (i = 0; i < card->n_targets; i++) {
  spin_lock(&card->ctrl[i].queue_lock);
  if (list_empty(&card->ctrl[i].queue)) {
   spin_unlock(&card->ctrl[i].queue_lock);
   continue;
  }
  spin_unlock(&card->ctrl[i].queue_lock);

  queue_work(card->ctrl[i].issue_wq,
    &card->ctrl[i].issue_dma_work);
 }

 dev_info(&dev->dev, "IBM Flash Adapter PCI: recovery complete.\n");

 return PCI_ERS_RESULT_RECOVERED;

failed_hw_buffers_init:
 for (i = 0; i < card->n_targets; i++) {
  if (card->ctrl[i].status.buf)
   pci_free_consistent(card->dev,
     STATUS_BUFFER_SIZE8,
     card->ctrl[i].status.buf,
     card->ctrl[i].status.dma_addr);
  if (card->ctrl[i].cmd.buf)
   pci_free_consistent(card->dev,
     COMMAND_BUFFER_SIZE8,
     card->ctrl[i].cmd.buf,
     card->ctrl[i].cmd.dma_addr);
 }
failed_hw_setup:
 rsxx_eeh_failure(dev);
 return PCI_ERS_RESULT_DISCONNECT;

}
