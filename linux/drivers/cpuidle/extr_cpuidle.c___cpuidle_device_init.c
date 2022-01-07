
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {scalar_t__ next_hrtimer; scalar_t__ last_residency; int states_usage; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void __cpuidle_device_init(struct cpuidle_device *dev)
{
 memset(dev->states_usage, 0, sizeof(dev->states_usage));
 dev->last_residency = 0;
 dev->next_hrtimer = 0;
}
