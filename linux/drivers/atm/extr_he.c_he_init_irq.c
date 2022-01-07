
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct he_irq {int dummy; } ;
struct he_dev {int irq_phys; unsigned int* irq_tailoffset; TYPE_1__* pci_dev; int irq; TYPE_2__* irq_base; TYPE_2__* irq_tail; TYPE_2__* irq_head; } ;
struct TYPE_4__ {int isw; } ;
struct TYPE_3__ {int irq; int dev; } ;


 int CONFIG_IRQ_SIZE ;
 int CONFIG_IRQ_THRESH ;
 int DEV_LABEL ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GRP_10_MAP ;
 int GRP_32_MAP ;
 int GRP_54_MAP ;
 int GRP_76_MAP ;
 int IRQ0_BASE ;
 int IRQ0_CNTL ;
 int IRQ0_DATA ;
 int IRQ0_HEAD ;
 int IRQ1_BASE ;
 int IRQ1_CNTL ;
 int IRQ1_DATA ;
 int IRQ1_HEAD ;
 int IRQ2_BASE ;
 int IRQ2_CNTL ;
 int IRQ2_DATA ;
 int IRQ2_HEAD ;
 int IRQ3_BASE ;
 int IRQ3_CNTL ;
 int IRQ3_DATA ;
 int IRQ3_HEAD ;
 int IRQF_SHARED ;
 int IRQ_INT_A ;
 int IRQ_SIZE (int) ;
 int IRQ_THRESH (int ) ;
 int IRQ_TYPE_LINE ;
 int ITYPE_INVALID ;
 TYPE_2__* dma_alloc_coherent (int *,int,int*,int ) ;
 int he_irq_handler ;
 int he_writel (struct he_dev*,int,int ) ;
 int hprintk (char*,...) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct he_dev*) ;

__attribute__((used)) static int he_init_irq(struct he_dev *he_dev)
{
 int i;




 he_dev->irq_base = dma_alloc_coherent(&he_dev->pci_dev->dev,
           (CONFIG_IRQ_SIZE + 1) * sizeof(struct he_irq),
           &he_dev->irq_phys, GFP_KERNEL);
 if (he_dev->irq_base == ((void*)0)) {
  hprintk("failed to allocate irq\n");
  return -ENOMEM;
 }
 he_dev->irq_tailoffset = (unsigned *)
     &he_dev->irq_base[CONFIG_IRQ_SIZE];
 *he_dev->irq_tailoffset = 0;
 he_dev->irq_head = he_dev->irq_base;
 he_dev->irq_tail = he_dev->irq_base;

 for (i = 0; i < CONFIG_IRQ_SIZE; ++i)
  he_dev->irq_base[i].isw = ITYPE_INVALID;

 he_writel(he_dev, he_dev->irq_phys, IRQ0_BASE);
 he_writel(he_dev,
  IRQ_SIZE(CONFIG_IRQ_SIZE) | IRQ_THRESH(CONFIG_IRQ_THRESH),
        IRQ0_HEAD);
 he_writel(he_dev, IRQ_INT_A | IRQ_TYPE_LINE, IRQ0_CNTL);
 he_writel(he_dev, 0x0, IRQ0_DATA);

 he_writel(he_dev, 0x0, IRQ1_BASE);
 he_writel(he_dev, 0x0, IRQ1_HEAD);
 he_writel(he_dev, 0x0, IRQ1_CNTL);
 he_writel(he_dev, 0x0, IRQ1_DATA);

 he_writel(he_dev, 0x0, IRQ2_BASE);
 he_writel(he_dev, 0x0, IRQ2_HEAD);
 he_writel(he_dev, 0x0, IRQ2_CNTL);
 he_writel(he_dev, 0x0, IRQ2_DATA);

 he_writel(he_dev, 0x0, IRQ3_BASE);
 he_writel(he_dev, 0x0, IRQ3_HEAD);
 he_writel(he_dev, 0x0, IRQ3_CNTL);
 he_writel(he_dev, 0x0, IRQ3_DATA);



 he_writel(he_dev, 0x0, GRP_10_MAP);
 he_writel(he_dev, 0x0, GRP_32_MAP);
 he_writel(he_dev, 0x0, GRP_54_MAP);
 he_writel(he_dev, 0x0, GRP_76_MAP);

 if (request_irq(he_dev->pci_dev->irq,
   he_irq_handler, IRQF_SHARED, DEV_LABEL, he_dev)) {
  hprintk("irq %d already in use\n", he_dev->pci_dev->irq);
  return -EINVAL;
 }

 he_dev->irq = he_dev->pci_dev->irq;

 return 0;
}
