
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int of_node; } ;
struct platform_device {TYPE_9__ dev; } ;
struct TYPE_13__ {int lteir; } ;
struct TYPE_12__ {int* irq; TYPE_2__* regs; TYPE_9__* dev; int irq_wait; int lock; } ;


 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int LTEIR_ENABLE ;
 int dev_err (TYPE_9__*,char*,...) ;
 int dev_set_drvdata (TYPE_9__*,TYPE_1__*) ;
 int free_irq (int,TYPE_1__*) ;
 TYPE_1__* fsl_lbc_ctrl_dev ;
 int fsl_lbc_ctrl_init (TYPE_1__*,int ) ;
 int fsl_lbc_ctrl_irq ;
 int init_waitqueue_head (int *) ;
 int iounmap (TYPE_2__*) ;
 void* irq_of_parse_and_map (int ,int) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 TYPE_2__* of_iomap (int ,int ) ;
 int out_be32 (int *,int ) ;
 int request_irq (int,int ,int ,char*,TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int fsl_lbc_ctrl_probe(struct platform_device *dev)
{
 int ret;

 if (!dev->dev.of_node) {
  dev_err(&dev->dev, "Device OF-Node is NULL");
  return -EFAULT;
 }

 fsl_lbc_ctrl_dev = kzalloc(sizeof(*fsl_lbc_ctrl_dev), GFP_KERNEL);
 if (!fsl_lbc_ctrl_dev)
  return -ENOMEM;

 dev_set_drvdata(&dev->dev, fsl_lbc_ctrl_dev);

 spin_lock_init(&fsl_lbc_ctrl_dev->lock);
 init_waitqueue_head(&fsl_lbc_ctrl_dev->irq_wait);

 fsl_lbc_ctrl_dev->regs = of_iomap(dev->dev.of_node, 0);
 if (!fsl_lbc_ctrl_dev->regs) {
  dev_err(&dev->dev, "failed to get memory region\n");
  ret = -ENODEV;
  goto err;
 }

 fsl_lbc_ctrl_dev->irq[0] = irq_of_parse_and_map(dev->dev.of_node, 0);
 if (!fsl_lbc_ctrl_dev->irq[0]) {
  dev_err(&dev->dev, "failed to get irq resource\n");
  ret = -ENODEV;
  goto err;
 }

 fsl_lbc_ctrl_dev->dev = &dev->dev;

 ret = fsl_lbc_ctrl_init(fsl_lbc_ctrl_dev, dev->dev.of_node);
 if (ret < 0)
  goto err;

 ret = request_irq(fsl_lbc_ctrl_dev->irq[0], fsl_lbc_ctrl_irq, 0,
    "fsl-lbc", fsl_lbc_ctrl_dev);
 if (ret != 0) {
  dev_err(&dev->dev, "failed to install irq (%d)\n",
   fsl_lbc_ctrl_dev->irq[0]);
  ret = fsl_lbc_ctrl_dev->irq[0];
  goto err;
 }

 fsl_lbc_ctrl_dev->irq[1] = irq_of_parse_and_map(dev->dev.of_node, 1);
 if (fsl_lbc_ctrl_dev->irq[1]) {
  ret = request_irq(fsl_lbc_ctrl_dev->irq[1], fsl_lbc_ctrl_irq,
    IRQF_SHARED, "fsl-lbc-err", fsl_lbc_ctrl_dev);
  if (ret) {
   dev_err(&dev->dev, "failed to install irq (%d)\n",
     fsl_lbc_ctrl_dev->irq[1]);
   ret = fsl_lbc_ctrl_dev->irq[1];
   goto err1;
  }
 }


 out_be32(&fsl_lbc_ctrl_dev->regs->lteir, LTEIR_ENABLE);

 return 0;

err1:
 free_irq(fsl_lbc_ctrl_dev->irq[0], fsl_lbc_ctrl_dev);
err:
 iounmap(fsl_lbc_ctrl_dev->regs);
 kfree(fsl_lbc_ctrl_dev);
 fsl_lbc_ctrl_dev = ((void*)0);
 return ret;
}
