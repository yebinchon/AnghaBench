
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct he_tpdrq {int dummy; } ;
struct he_dev {int tpdrq_phys; int * tpdrq_base; int * tpdrq_head; int * tpdrq_tail; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int CONFIG_TPDRQ_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TPDRQ_B_H ;
 int TPDRQ_S ;
 int TPDRQ_T ;
 int * dma_alloc_coherent (int *,int,int*,int ) ;
 int he_writel (struct he_dev*,int,int ) ;
 int hprintk (char*) ;

__attribute__((used)) static int he_init_tpdrq(struct he_dev *he_dev)
{
 he_dev->tpdrq_base = dma_alloc_coherent(&he_dev->pci_dev->dev,
      CONFIG_TPDRQ_SIZE * sizeof(struct he_tpdrq),
      &he_dev->tpdrq_phys,
      GFP_KERNEL);
 if (he_dev->tpdrq_base == ((void*)0)) {
  hprintk("failed to alloc tpdrq\n");
  return -ENOMEM;
 }

 he_dev->tpdrq_tail = he_dev->tpdrq_base;
 he_dev->tpdrq_head = he_dev->tpdrq_base;

 he_writel(he_dev, he_dev->tpdrq_phys, TPDRQ_B_H);
 he_writel(he_dev, 0, TPDRQ_T);
 he_writel(he_dev, CONFIG_TPDRQ_SIZE - 1, TPDRQ_S);

 return 0;
}
