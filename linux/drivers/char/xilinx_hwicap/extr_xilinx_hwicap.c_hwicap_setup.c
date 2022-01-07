
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ start; int end; } ;
struct TYPE_3__ {int owner; } ;
struct hwicap_drvdata {scalar_t__ mem_size; int base_address; TYPE_1__ cdev; scalar_t__ mem_start; scalar_t__ is_open; int sem; struct config_registers const* config_regs; struct hwicap_driver_config const* config; struct device* dev; int devt; int mem_end; } ;
struct hwicap_driver_config {int dummy; } ;
struct device {int dummy; } ;
struct config_registers {int dummy; } ;
typedef int dev_t ;


 int DRIVER_NAME ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HWICAP_DEVICES ;
 int MKDEV (int ,scalar_t__) ;
 int THIS_MODULE ;
 int XHWICAP_MAJOR ;
 scalar_t__ XHWICAP_MINOR ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_init (TYPE_1__*,int *) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,void*) ;
 int device_create (int ,struct device*,int ,int *,char*,int ,int) ;
 int hwicap_fops ;
 int icap_class ;
 int icap_sem ;
 int ioremap (scalar_t__,scalar_t__) ;
 int iounmap (int ) ;
 int kfree (struct hwicap_drvdata*) ;
 struct hwicap_drvdata* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* probed_devices ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_mem_region (scalar_t__,scalar_t__,int ) ;
 scalar_t__ resource_size (struct resource const*) ;

__attribute__((used)) static int hwicap_setup(struct device *dev, int id,
  const struct resource *regs_res,
  const struct hwicap_driver_config *config,
  const struct config_registers *config_regs)
{
 dev_t devt;
 struct hwicap_drvdata *drvdata = ((void*)0);
 int retval = 0;

 dev_info(dev, "Xilinx icap port driver\n");

 mutex_lock(&icap_sem);

 if (id < 0) {
  for (id = 0; id < HWICAP_DEVICES; id++)
   if (!probed_devices[id])
    break;
 }
 if (id < 0 || id >= HWICAP_DEVICES) {
  mutex_unlock(&icap_sem);
  dev_err(dev, "%s%i too large\n", DRIVER_NAME, id);
  return -EINVAL;
 }
 if (probed_devices[id]) {
  mutex_unlock(&icap_sem);
  dev_err(dev, "cannot assign to %s%i; it is already in use\n",
   DRIVER_NAME, id);
  return -EBUSY;
 }

 probed_devices[id] = 1;
 mutex_unlock(&icap_sem);

 devt = MKDEV(XHWICAP_MAJOR, XHWICAP_MINOR + id);

 drvdata = kzalloc(sizeof(struct hwicap_drvdata), GFP_KERNEL);
 if (!drvdata) {
  retval = -ENOMEM;
  goto failed0;
 }
 dev_set_drvdata(dev, (void *)drvdata);

 if (!regs_res) {
  dev_err(dev, "Couldn't get registers resource\n");
  retval = -EFAULT;
  goto failed1;
 }

 drvdata->mem_start = regs_res->start;
 drvdata->mem_end = regs_res->end;
 drvdata->mem_size = resource_size(regs_res);

 if (!request_mem_region(drvdata->mem_start,
     drvdata->mem_size, DRIVER_NAME)) {
  dev_err(dev, "Couldn't lock memory region at %Lx\n",
   (unsigned long long) regs_res->start);
  retval = -EBUSY;
  goto failed1;
 }

 drvdata->devt = devt;
 drvdata->dev = dev;
 drvdata->base_address = ioremap(drvdata->mem_start, drvdata->mem_size);
 if (!drvdata->base_address) {
  dev_err(dev, "ioremap() failed\n");
  retval = -ENOMEM;
  goto failed2;
 }

 drvdata->config = config;
 drvdata->config_regs = config_regs;

 mutex_init(&drvdata->sem);
 drvdata->is_open = 0;

 dev_info(dev, "ioremap %llx to %p with size %llx\n",
   (unsigned long long) drvdata->mem_start,
   drvdata->base_address,
   (unsigned long long) drvdata->mem_size);

 cdev_init(&drvdata->cdev, &hwicap_fops);
 drvdata->cdev.owner = THIS_MODULE;
 retval = cdev_add(&drvdata->cdev, devt, 1);
 if (retval) {
  dev_err(dev, "cdev_add() failed\n");
  goto failed3;
 }

 device_create(icap_class, dev, devt, ((void*)0), "%s%d", DRIVER_NAME, id);
 return 0;

 failed3:
 iounmap(drvdata->base_address);

 failed2:
 release_mem_region(regs_res->start, drvdata->mem_size);

 failed1:
 kfree(drvdata);

 failed0:
 mutex_lock(&icap_sem);
 probed_devices[id] = 0;
 mutex_unlock(&icap_sem);

 return retval;
}
