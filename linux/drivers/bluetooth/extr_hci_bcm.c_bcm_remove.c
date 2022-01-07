
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct bcm_device {int name; int list; } ;


 int bcm_device_lock ;
 int dev_info (int *,char*,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bcm_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int bcm_remove(struct platform_device *pdev)
{
 struct bcm_device *dev = platform_get_drvdata(pdev);

 mutex_lock(&bcm_device_lock);
 list_del(&dev->list);
 mutex_unlock(&bcm_device_lock);

 dev_info(&pdev->dev, "%s device unregistered.\n", dev->name);

 return 0;
}
