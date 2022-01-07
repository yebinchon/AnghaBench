
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsq_entry {int word_2; } ;
struct TYPE_4__ {unsigned long paddr; struct tsq_entry* base; struct tsq_entry* next; struct tsq_entry* last; } ;
struct idt77252_dev {TYPE_2__ tsq; int name; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int RSQSIZE ;
 int SAR_REG_TSQB ;
 int SAR_REG_TSQH ;
 int SAR_TSQE_INVALID ;
 int TSQ_NUM_ENTRIES ;
 int cpu_to_le32 (int ) ;
 struct tsq_entry* dma_alloc_coherent (int *,int ,unsigned long*,int ) ;
 int printk (char*,int ) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int
init_tsq(struct idt77252_dev *card)
{
 struct tsq_entry *tsqe;

 card->tsq.base = dma_alloc_coherent(&card->pcidev->dev, RSQSIZE,
         &card->tsq.paddr, GFP_KERNEL);
 if (card->tsq.base == ((void*)0)) {
  printk("%s: can't allocate TSQ.\n", card->name);
  return -1;
 }

 card->tsq.last = card->tsq.base + TSQ_NUM_ENTRIES - 1;
 card->tsq.next = card->tsq.last;
 for (tsqe = card->tsq.base; tsqe <= card->tsq.last; tsqe++)
  tsqe->word_2 = cpu_to_le32(SAR_TSQE_INVALID);

 writel(card->tsq.paddr, SAR_REG_TSQB);
 writel((unsigned long) card->tsq.next - (unsigned long) card->tsq.base,
        SAR_REG_TSQH);

 return 0;
}
