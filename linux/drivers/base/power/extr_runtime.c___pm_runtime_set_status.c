
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int runtime_status; int lock; scalar_t__ runtime_error; int child_count; int ignore_children; scalar_t__ disable_depth; } ;
struct device {TYPE_1__ power; struct device* parent; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 unsigned int RPM_ACTIVE ;
 unsigned int RPM_SUSPENDED ;
 int SINGLE_DEPTH_NESTING ;
 int __update_runtime_status (struct device*,unsigned int) ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_inc (int *) ;
 int dev_err (struct device*,char*,int ,int ) ;
 int dev_name (struct device*) ;
 int device_links_read_lock () ;
 int device_links_read_unlock (int) ;
 int pm_request_idle (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int rpm_get_suppliers (struct device*) ;
 int rpm_put_suppliers (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

int __pm_runtime_set_status(struct device *dev, unsigned int status)
{
 struct device *parent = dev->parent;
 bool notify_parent = 0;
 int error = 0;

 if (status != RPM_ACTIVE && status != RPM_SUSPENDED)
  return -EINVAL;

 spin_lock_irq(&dev->power.lock);





 if (dev->power.runtime_error || dev->power.disable_depth)
  dev->power.disable_depth++;
 else
  error = -EAGAIN;

 spin_unlock_irq(&dev->power.lock);

 if (error)
  return error;







 if (status == RPM_ACTIVE) {
  int idx = device_links_read_lock();

  error = rpm_get_suppliers(dev);
  if (error)
   status = RPM_SUSPENDED;

  device_links_read_unlock(idx);
 }

 spin_lock_irq(&dev->power.lock);

 if (dev->power.runtime_status == status || !parent)
  goto out_set;

 if (status == RPM_SUSPENDED) {
  atomic_add_unless(&parent->power.child_count, -1, 0);
  notify_parent = !parent->power.ignore_children;
 } else {
  spin_lock_nested(&parent->power.lock, SINGLE_DEPTH_NESTING);






  if (!parent->power.disable_depth
      && !parent->power.ignore_children
      && parent->power.runtime_status != RPM_ACTIVE) {
   dev_err(dev, "runtime PM trying to activate child device %s but parent (%s) is not active\n",
    dev_name(dev),
    dev_name(parent));
   error = -EBUSY;
  } else if (dev->power.runtime_status == RPM_SUSPENDED) {
   atomic_inc(&parent->power.child_count);
  }

  spin_unlock(&parent->power.lock);

  if (error) {
   status = RPM_SUSPENDED;
   goto out;
  }
 }

 out_set:
 __update_runtime_status(dev, status);
 if (!error)
  dev->power.runtime_error = 0;

 out:
 spin_unlock_irq(&dev->power.lock);

 if (notify_parent)
  pm_request_idle(parent);

 if (status == RPM_SUSPENDED) {
  int idx = device_links_read_lock();

  rpm_put_suppliers(dev);

  device_links_read_unlock(idx);
 }

 pm_runtime_enable(dev);

 return error;
}
