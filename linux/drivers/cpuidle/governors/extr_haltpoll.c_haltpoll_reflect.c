
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int last_state_idx; int last_residency; } ;


 int adjust_poll_limit (struct cpuidle_device*,int ) ;

__attribute__((used)) static void haltpoll_reflect(struct cpuidle_device *dev, int index)
{
 dev->last_state_idx = index;

 if (index != 0)
  adjust_poll_limit(dev, dev->last_residency);
}
