
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxtet_device {int idx; int dev; int id; } ;
struct moxtet {int count; int dev; int * modules; } ;


 int EBUSY ;
 int dev_err (int ,char*,int,...) ;
 int moxtet_add_device (struct moxtet_device*) ;
 struct moxtet_device* moxtet_alloc_device (struct moxtet*) ;
 int put_device (int *) ;

__attribute__((used)) static void
moxtet_register_devices_from_topology(struct moxtet *moxtet)
{
 struct moxtet_device *dev;
 int i, ret;

 for (i = 0; i < moxtet->count; ++i) {
  dev = moxtet_alloc_device(moxtet);
  if (!dev) {
   dev_err(moxtet->dev, "Moxtet device %u alloc error\n",
    i);
   continue;
  }

  dev->idx = i;
  dev->id = moxtet->modules[i];

  ret = moxtet_add_device(dev);
  if (ret && ret != -EBUSY) {
   put_device(&dev->dev);
   dev_err(moxtet->dev,
    "Moxtet device %u register error: %i\n", i,
    ret);
  }
 }
}
