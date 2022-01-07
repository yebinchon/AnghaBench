
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int owner; } ;
struct xilly_endpoint {int num_channels; int major; int lowest_minor; TYPE_2__ cdev; int dev; TYPE_1__* ephw; } ;
struct device {int dummy; } ;
typedef int devname ;
typedef int dev_t ;
struct TYPE_5__ {int owner; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int MKDEV (int,int) ;
 int alloc_chrdev_region (int *,int ,int,int ) ;
 int cdev_add (TYPE_2__*,int ,int) ;
 int cdev_del (TYPE_2__*) ;
 int cdev_init (TYPE_2__*,int *) ;
 int dev_info (int ,char*,int) ;
 int dev_warn (int ,char*,...) ;
 struct device* device_create (int ,int *,int ,int *,char*,char*) ;
 int device_destroy (int ,int ) ;
 int snprintf (char*,int,char*,unsigned char const*) ;
 int unregister_chrdev_region (int ,int) ;
 int xillybus_class ;
 int xillybus_fops ;
 int xillyname ;

__attribute__((used)) static int xillybus_init_chrdev(struct xilly_endpoint *endpoint,
    const unsigned char *idt)
{
 int rc;
 dev_t dev;
 int devnum, i, minor, major;
 char devname[48];
 struct device *device;

 rc = alloc_chrdev_region(&dev, 0,
     endpoint->num_channels,
     xillyname);
 if (rc) {
  dev_warn(endpoint->dev, "Failed to obtain major/minors");
  return rc;
 }

 endpoint->major = major = MAJOR(dev);
 endpoint->lowest_minor = minor = MINOR(dev);

 cdev_init(&endpoint->cdev, &xillybus_fops);
 endpoint->cdev.owner = endpoint->ephw->owner;
 rc = cdev_add(&endpoint->cdev, MKDEV(major, minor),
        endpoint->num_channels);
 if (rc) {
  dev_warn(endpoint->dev, "Failed to add cdev. Aborting.\n");
  goto unregister_chrdev;
 }

 idt++;

 for (i = minor, devnum = 0;
      devnum < endpoint->num_channels;
      devnum++, i++) {
  snprintf(devname, sizeof(devname)-1, "xillybus_%s", idt);

  devname[sizeof(devname)-1] = 0;

  while (*idt++)
                     ;

  device = device_create(xillybus_class,
           ((void*)0),
           MKDEV(major, i),
           ((void*)0),
           "%s", devname);

  if (IS_ERR(device)) {
   dev_warn(endpoint->dev,
     "Failed to create %s device. Aborting.\n",
     devname);
   rc = -ENODEV;
   goto unroll_device_create;
  }
 }

 dev_info(endpoint->dev, "Created %d device files.\n",
   endpoint->num_channels);
 return 0;

unroll_device_create:
 devnum--; i--;
 for (; devnum >= 0; devnum--, i--)
  device_destroy(xillybus_class, MKDEV(major, i));

 cdev_del(&endpoint->cdev);
unregister_chrdev:
 unregister_chrdev_region(MKDEV(major, minor), endpoint->num_channels);

 return rc;
}
