
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moxtet_device {TYPE_1__* moxtet; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int kfree (struct moxtet_device*) ;
 int put_device (int ) ;
 struct moxtet_device* to_moxtet_device (struct device*) ;

__attribute__((used)) static void moxtet_dev_release(struct device *dev)
{
 struct moxtet_device *mdev = to_moxtet_device(dev);

 put_device(mdev->moxtet->dev);
 kfree(mdev);
}
