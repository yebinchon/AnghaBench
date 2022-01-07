
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct locomo_dev_info {scalar_t__* irq; int length; scalar_t__ offset; int devid; int name; } ;
struct TYPE_5__ {int coherent_dma_mask; int release; int * bus; TYPE_1__* parent; int * dma_mask; } ;
struct locomo_dev {TYPE_2__ dev; scalar_t__* irq; int length; scalar_t__ mapbase; int devid; int dma_mask; } ;
struct locomo {scalar_t__ irq_base; scalar_t__ base; TYPE_1__* dev; } ;
struct TYPE_4__ {int coherent_dma_mask; int * dma_mask; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NO_IRQ ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_register (TYPE_2__*) ;
 int kfree (struct locomo_dev*) ;
 struct locomo_dev* kzalloc (int,int ) ;
 int locomo_bus_type ;
 int locomo_dev_release ;

__attribute__((used)) static int
locomo_init_one_child(struct locomo *lchip, struct locomo_dev_info *info)
{
 struct locomo_dev *dev;
 int ret;

 dev = kzalloc(sizeof(struct locomo_dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto out;
 }





 if (lchip->dev->dma_mask) {
  dev->dma_mask = *lchip->dev->dma_mask;
  dev->dev.dma_mask = &dev->dma_mask;
 }

 dev_set_name(&dev->dev, "%s", info->name);
 dev->devid = info->devid;
 dev->dev.parent = lchip->dev;
 dev->dev.bus = &locomo_bus_type;
 dev->dev.release = locomo_dev_release;
 dev->dev.coherent_dma_mask = lchip->dev->coherent_dma_mask;

 if (info->offset)
  dev->mapbase = lchip->base + info->offset;
 else
  dev->mapbase = 0;
 dev->length = info->length;

 dev->irq[0] = (lchip->irq_base == NO_IRQ) ?
   NO_IRQ : lchip->irq_base + info->irq[0];

 ret = device_register(&dev->dev);
 if (ret) {
 out:
  kfree(dev);
 }
 return ret;
}
