
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disable_depth; scalar_t__ runtime_status; scalar_t__ request; scalar_t__ request_pending; scalar_t__ deferred_resume; int child_count; int ignore_children; int usage_count; scalar_t__ runtime_error; } ;
struct device {TYPE_1__ power; } ;


 int EACCES ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ RPM_REQ_RESUME ;
 scalar_t__ RPM_SUSPENDED ;
 scalar_t__ RPM_SUSPENDING ;
 scalar_t__ __dev_pm_qos_resume_latency (struct device*) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static int rpm_check_suspend_allowed(struct device *dev)
{
 int retval = 0;

 if (dev->power.runtime_error)
  retval = -EINVAL;
 else if (dev->power.disable_depth > 0)
  retval = -EACCES;
 else if (atomic_read(&dev->power.usage_count) > 0)
  retval = -EAGAIN;
 else if (!dev->power.ignore_children &&
   atomic_read(&dev->power.child_count))
  retval = -EBUSY;


 else if ((dev->power.deferred_resume
   && dev->power.runtime_status == RPM_SUSPENDING)
     || (dev->power.request_pending
   && dev->power.request == RPM_REQ_RESUME))
  retval = -EAGAIN;
 else if (__dev_pm_qos_resume_latency(dev) == 0)
  retval = -EPERM;
 else if (dev->power.runtime_status == RPM_SUSPENDED)
  retval = 1;

 return retval;
}
