
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int runtime_status; } ;
struct device {TYPE_1__ power; } ;
typedef enum rpm_status { ____Placeholder_rpm_status } rpm_status ;


 int update_pm_runtime_accounting (struct device*) ;

__attribute__((used)) static void __update_runtime_status(struct device *dev, enum rpm_status status)
{
 update_pm_runtime_accounting(dev);
 dev->power.runtime_status = status;
}
