
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {TYPE_4__* bus; TYPE_3__* class; TYPE_2__* type; TYPE_1__* pm_domain; } ;
typedef int pm_message_t ;
typedef int * pm_callback_t ;
struct TYPE_8__ {int * pm; } ;
struct TYPE_7__ {int * pm; } ;
struct TYPE_6__ {int * pm; } ;
struct TYPE_5__ {int ops; } ;


 int * pm_noirq_op (int *,int ) ;

__attribute__((used)) static pm_callback_t dpm_subsys_resume_noirq_cb(struct device *dev,
      pm_message_t state,
      const char **info_p)
{
 pm_callback_t callback;
 const char *info;

 if (dev->pm_domain) {
  info = "noirq power domain ";
  callback = pm_noirq_op(&dev->pm_domain->ops, state);
 } else if (dev->type && dev->type->pm) {
  info = "noirq type ";
  callback = pm_noirq_op(dev->type->pm, state);
 } else if (dev->class && dev->class->pm) {
  info = "noirq class ";
  callback = pm_noirq_op(dev->class->pm, state);
 } else if (dev->bus && dev->bus->pm) {
  info = "noirq bus ";
  callback = pm_noirq_op(dev->bus->pm, state);
 } else {
  return ((void*)0);
 }

 if (info_p)
  *info_p = info;

 return callback;
}
