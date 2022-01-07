
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_pm_ops {int complete; int resume; int resume_early; int resume_noirq; int suspend_noirq; int suspend_late; int suspend; int prepare; } ;



__attribute__((used)) static bool pm_ops_is_empty(const struct dev_pm_ops *ops)
{
 if (!ops)
  return 1;

 return !ops->prepare &&
        !ops->suspend &&
        !ops->suspend_late &&
        !ops->suspend_noirq &&
        !ops->resume_noirq &&
        !ops->resume_early &&
        !ops->resume &&
        !ops->complete;
}
