
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;



__attribute__((used)) static inline int cpuidle_enter_state_coupled(struct cpuidle_device *dev,
  struct cpuidle_driver *drv, int next_state)
{
 return -1;
}
