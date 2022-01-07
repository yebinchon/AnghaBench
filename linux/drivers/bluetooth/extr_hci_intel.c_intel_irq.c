
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_device {TYPE_1__* pdev; int hu_lock; scalar_t__ hu; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int dev_info (int *,char*) ;
 int intel_lpm_host_wake (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static irqreturn_t intel_irq(int irq, void *dev_id)
{
 struct intel_device *idev = dev_id;

 dev_info(&idev->pdev->dev, "hci_intel irq\n");

 mutex_lock(&idev->hu_lock);
 if (idev->hu)
  intel_lpm_host_wake(idev->hu);
 mutex_unlock(&idev->hu_lock);


 pm_runtime_get(&idev->pdev->dev);
 pm_runtime_mark_last_busy(&idev->pdev->dev);
 pm_runtime_put_autosuspend(&idev->pdev->dev);

 return IRQ_HANDLED;
}
