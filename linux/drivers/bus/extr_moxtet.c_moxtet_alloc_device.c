
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int * bus; int parent; } ;
struct moxtet_device {TYPE_1__ dev; struct moxtet* moxtet; } ;
struct moxtet {int dev; } ;


 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 int get_device (int ) ;
 struct moxtet_device* kzalloc (int,int ) ;
 int moxtet_bus_type ;
 int moxtet_dev_release ;
 int put_device (int ) ;

__attribute__((used)) static struct moxtet_device *
moxtet_alloc_device(struct moxtet *moxtet)
{
 struct moxtet_device *dev;

 if (!get_device(moxtet->dev))
  return ((void*)0);

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  put_device(moxtet->dev);
  return ((void*)0);
 }

 dev->moxtet = moxtet;
 dev->dev.parent = moxtet->dev;
 dev->dev.bus = &moxtet_bus_type;
 dev->dev.release = moxtet_dev_release;

 device_initialize(&dev->dev);

 return dev;
}
