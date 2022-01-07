
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ops; int owner; } ;
struct scr24x_dev {scalar_t__ devno; TYPE_2__ c_dev; int regs; int * dev; int refcnt; int lock; } ;
struct pcmcia_device {int config_flags; int dev; TYPE_1__** resource; struct scr24x_dev* priv; } ;
struct TYPE_4__ {int start; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAJOR (int ) ;
 int MKDEV (int ,scalar_t__) ;
 size_t PCMCIA_IOPORT_0 ;
 scalar_t__ SCR24X_DEVS ;
 int THIS_MODULE ;
 int cdev_add (TYPE_2__*,int ,int) ;
 int cdev_init (TYPE_2__*,int *) ;
 int clear_bit (scalar_t__,int ) ;
 int dev_info (int *,char*) ;
 int device_create (int ,int *,int ,int *,char*,scalar_t__) ;
 int devm_ioport_map (int *,int ,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int kfree (struct scr24x_dev*) ;
 int kref_init (int *) ;
 struct scr24x_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int resource_size (TYPE_1__*) ;
 int scr24x_class ;
 int scr24x_config_check ;
 int scr24x_devt ;
 int scr24x_fops ;
 int scr24x_minors ;

__attribute__((used)) static int scr24x_probe(struct pcmcia_device *link)
{
 struct scr24x_dev *dev;
 int ret;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 dev->devno = find_first_zero_bit(scr24x_minors, SCR24X_DEVS);
 if (dev->devno >= SCR24X_DEVS) {
  ret = -EBUSY;
  goto err;
 }

 mutex_init(&dev->lock);
 kref_init(&dev->refcnt);

 link->priv = dev;
 link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

 ret = pcmcia_loop_config(link, scr24x_config_check, ((void*)0));
 if (ret < 0)
  goto err;

 dev->dev = &link->dev;
 dev->regs = devm_ioport_map(&link->dev,
    link->resource[PCMCIA_IOPORT_0]->start,
    resource_size(link->resource[PCMCIA_IOPORT_0]));
 if (!dev->regs) {
  ret = -EIO;
  goto err;
 }

 cdev_init(&dev->c_dev, &scr24x_fops);
 dev->c_dev.owner = THIS_MODULE;
 dev->c_dev.ops = &scr24x_fops;
 ret = cdev_add(&dev->c_dev, MKDEV(MAJOR(scr24x_devt), dev->devno), 1);
 if (ret < 0)
  goto err;

 ret = pcmcia_enable_device(link);
 if (ret < 0) {
  pcmcia_disable_device(link);
  goto err;
 }

 device_create(scr24x_class, ((void*)0), MKDEV(MAJOR(scr24x_devt), dev->devno),
        ((void*)0), "scr24x%d", dev->devno);

 dev_info(&link->dev, "SCR24x Chip Card Interface\n");
 return 0;

err:
 if (dev->devno < SCR24X_DEVS)
  clear_bit(dev->devno, scr24x_minors);
 kfree (dev);
 return ret;
}
