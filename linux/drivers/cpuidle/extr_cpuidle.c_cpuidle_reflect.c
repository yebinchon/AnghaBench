
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int (* reflect ) (struct cpuidle_device*,int) ;} ;


 TYPE_1__* cpuidle_curr_governor ;
 int stub1 (struct cpuidle_device*,int) ;

void cpuidle_reflect(struct cpuidle_device *dev, int index)
{
 if (cpuidle_curr_governor->reflect && index >= 0)
  cpuidle_curr_governor->reflect(dev, index);
}
