
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scq_info {scalar_t__ paddr; int * last; int * next; int * base; int pending; int transmit; int skblock; int lock; int used; } ;
struct idt77252_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int SCQ_ENTRIES ;
 int SCQ_SIZE ;
 int TXPRINTK (char*,int *,int *,int *,unsigned long long) ;
 int atomic_set (int *,int ) ;
 int * dma_alloc_coherent (int *,int ,scalar_t__*,int ) ;
 int kfree (struct scq_info*) ;
 struct scq_info* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct scq_info *
alloc_scq(struct idt77252_dev *card, int class)
{
 struct scq_info *scq;

 scq = kzalloc(sizeof(struct scq_info), GFP_KERNEL);
 if (!scq)
  return ((void*)0);
 scq->base = dma_alloc_coherent(&card->pcidev->dev, SCQ_SIZE,
           &scq->paddr, GFP_KERNEL);
 if (scq->base == ((void*)0)) {
  kfree(scq);
  return ((void*)0);
 }

 scq->next = scq->base;
 scq->last = scq->base + (SCQ_ENTRIES - 1);
 atomic_set(&scq->used, 0);

 spin_lock_init(&scq->lock);
 spin_lock_init(&scq->skblock);

 skb_queue_head_init(&scq->transmit);
 skb_queue_head_init(&scq->pending);

 TXPRINTK("idt77252: SCQ: base 0x%p, next 0x%p, last 0x%p, paddr %08llx\n",
   scq->base, scq->next, scq->last, (unsigned long long)scq->paddr);

 return scq;
}
