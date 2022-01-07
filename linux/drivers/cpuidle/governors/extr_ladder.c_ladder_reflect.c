
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int last_state_idx; } ;



__attribute__((used)) static void ladder_reflect(struct cpuidle_device *dev, int index)
{
 if (index > 0)
  dev->last_state_idx = index;
}
