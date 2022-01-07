
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ace_device {int id; int irq; int bus_width; scalar_t__ physaddr; struct device* dev; } ;
typedef scalar_t__ resource_size_t ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ace_setup (struct ace_device*) ;
 int dev_dbg (struct device*,char*,struct device*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct ace_device*) ;
 int kfree (struct ace_device*) ;
 struct ace_device* kzalloc (int,int ) ;

__attribute__((used)) static int ace_alloc(struct device *dev, int id, resource_size_t physaddr,
       int irq, int bus_width)
{
 struct ace_device *ace;
 int rc;
 dev_dbg(dev, "ace_alloc(%p)\n", dev);

 if (!physaddr) {
  rc = -ENODEV;
  goto err_noreg;
 }


 ace = kzalloc(sizeof(struct ace_device), GFP_KERNEL);
 if (!ace) {
  rc = -ENOMEM;
  goto err_alloc;
 }

 ace->dev = dev;
 ace->id = id;
 ace->physaddr = physaddr;
 ace->irq = irq;
 ace->bus_width = bus_width;


 rc = ace_setup(ace);
 if (rc)
  goto err_setup;

 dev_set_drvdata(dev, ace);
 return 0;

err_setup:
 dev_set_drvdata(dev, ((void*)0));
 kfree(ace);
err_alloc:
err_noreg:
 dev_err(dev, "could not initialize device, err=%i\n", rc);
 return rc;
}
