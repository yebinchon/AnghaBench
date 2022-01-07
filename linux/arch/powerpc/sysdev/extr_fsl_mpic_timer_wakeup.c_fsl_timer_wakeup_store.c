
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time64_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_7__ {TYPE_1__* timer; } ;
struct TYPE_6__ {int irq; } ;


 size_t EINVAL ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 int fsl_mpic_timer_irq ;
 TYPE_3__* fsl_wakeup ;
 scalar_t__ kstrtoll (char const*,int ,int *) ;
 int mpic_free_timer (TYPE_1__*) ;
 TYPE_1__* mpic_request_timer (int ,TYPE_3__*,int ) ;
 int mpic_start_timer (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_lock ;

__attribute__((used)) static ssize_t fsl_timer_wakeup_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf,
    size_t count)
{
 time64_t interval;
 int ret;

 if (kstrtoll(buf, 0, &interval))
  return -EINVAL;

 mutex_lock(&sysfs_lock);

 if (fsl_wakeup->timer) {
  disable_irq_wake(fsl_wakeup->timer->irq);
  mpic_free_timer(fsl_wakeup->timer);
  fsl_wakeup->timer = ((void*)0);
 }

 if (!interval) {
  mutex_unlock(&sysfs_lock);
  return count;
 }

 fsl_wakeup->timer = mpic_request_timer(fsl_mpic_timer_irq,
      fsl_wakeup, interval);
 if (!fsl_wakeup->timer) {
  mutex_unlock(&sysfs_lock);
  return -EINVAL;
 }

 ret = enable_irq_wake(fsl_wakeup->timer->irq);
 if (ret) {
  mpic_free_timer(fsl_wakeup->timer);
  fsl_wakeup->timer = ((void*)0);
  mutex_unlock(&sysfs_lock);

  return ret;
 }

 mpic_start_timer(fsl_wakeup->timer);

 mutex_unlock(&sysfs_lock);

 return count;
}
