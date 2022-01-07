
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* subsys_data; } ;
struct device {TYPE_2__ power; } ;
typedef int s64 ;
struct TYPE_7__ {int effective_constraint_ns; } ;
struct TYPE_8__ {TYPE_3__ td; } ;
struct TYPE_5__ {scalar_t__ domain_data; } ;


 int DEV_PM_QOS_RESUME_LATENCY ;
 int NSEC_PER_USEC ;
 TYPE_4__* dev_gpd_data (struct device*) ;
 int dev_pm_qos_read_value (struct device*,int ) ;

__attribute__((used)) static int dev_update_qos_constraint(struct device *dev, void *data)
{
 s64 *constraint_ns_p = data;
 s64 constraint_ns;

 if (dev->power.subsys_data && dev->power.subsys_data->domain_data) {







  constraint_ns = dev_gpd_data(dev)->td.effective_constraint_ns;
 } else {






  constraint_ns = dev_pm_qos_read_value(dev, DEV_PM_QOS_RESUME_LATENCY);
  constraint_ns *= NSEC_PER_USEC;
 }

 if (constraint_ns < *constraint_ns_p)
  *constraint_ns_p = constraint_ns;

 return 0;
}
