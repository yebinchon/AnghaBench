
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct cardinfo {int queue; TYPE_2__* mm_pages; TYPE_1__* dev; int csr_remap; int tasklet; } ;
struct TYPE_4__ {int page_dma; scalar_t__ desc; } ;
struct TYPE_3__ {int dev; } ;


 int PAGE_SIZE ;
 int blk_cleanup_queue (int ) ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int free_irq (int ,struct cardinfo*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct cardinfo* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void mm_pci_remove(struct pci_dev *dev)
{
 struct cardinfo *card = pci_get_drvdata(dev);

 tasklet_kill(&card->tasklet);
 free_irq(dev->irq, card);
 iounmap(card->csr_remap);

 if (card->mm_pages[0].desc)
  dma_free_coherent(&card->dev->dev, PAGE_SIZE * 2,
        card->mm_pages[0].desc,
        card->mm_pages[0].page_dma);
 if (card->mm_pages[1].desc)
  dma_free_coherent(&card->dev->dev, PAGE_SIZE * 2,
        card->mm_pages[1].desc,
        card->mm_pages[1].page_dma);
 blk_cleanup_queue(card->queue);

 pci_release_regions(dev);
 pci_disable_device(dev);
}
