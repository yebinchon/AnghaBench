
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxtet_device {scalar_t__ idx; struct moxtet* moxtet; } ;
struct moxtet {scalar_t__ count; int* tx; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct moxtet_device* to_moxtet_device (struct device*) ;

int moxtet_device_written(struct device *dev)
{
 struct moxtet_device *mdev = to_moxtet_device(dev);
 struct moxtet *moxtet = mdev->moxtet;

 if (mdev->idx >= moxtet->count)
  return -EINVAL;

 return moxtet->tx[moxtet->count - mdev->idx];
}
