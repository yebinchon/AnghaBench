
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct moxtet_device {scalar_t__ idx; struct moxtet* moxtet; } ;
struct moxtet {scalar_t__ count; int lock; int * tx; int dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_write (int ,int *,size_t) ;
 struct moxtet_device* to_moxtet_device (struct device*) ;
 int to_spi_device (int ) ;

int moxtet_device_write(struct device *dev, u8 val)
{
 struct moxtet_device *mdev = to_moxtet_device(dev);
 struct moxtet *moxtet = mdev->moxtet;
 int ret;

 if (mdev->idx >= moxtet->count)
  return -EINVAL;

 mutex_lock(&moxtet->lock);

 moxtet->tx[moxtet->count - mdev->idx] = val;

 ret = spi_write(to_spi_device(moxtet->dev), moxtet->tx,
   moxtet->count + 1);

 mutex_unlock(&moxtet->lock);

 return ret;
}
