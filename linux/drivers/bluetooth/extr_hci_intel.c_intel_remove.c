
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_device {int list; } ;


 int dev_info (int *,char*) ;
 int device_wakeup_disable (int *) ;
 int intel_device_list_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct intel_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int intel_remove(struct platform_device *pdev)
{
 struct intel_device *idev = platform_get_drvdata(pdev);

 device_wakeup_disable(&pdev->dev);

 mutex_lock(&intel_device_list_lock);
 list_del(&idev->list);
 mutex_unlock(&intel_device_list_lock);

 dev_info(&pdev->dev, "unregistered.\n");

 return 0;
}
