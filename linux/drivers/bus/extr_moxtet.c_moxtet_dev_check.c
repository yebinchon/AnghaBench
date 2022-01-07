
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxtet_device {scalar_t__ moxtet; scalar_t__ id; scalar_t__ idx; } ;
struct device {int dummy; } ;


 int EBUSY ;
 struct moxtet_device* to_moxtet_device (struct device*) ;

__attribute__((used)) static int moxtet_dev_check(struct device *dev, void *data)
{
 struct moxtet_device *mdev = to_moxtet_device(dev);
 struct moxtet_device *new_dev = data;

 if (mdev->moxtet == new_dev->moxtet && mdev->id == new_dev->id &&
     mdev->idx == new_dev->idx)
  return -EBUSY;
 return 0;
}
