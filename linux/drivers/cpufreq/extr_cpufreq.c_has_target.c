
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target; scalar_t__ target_index; } ;


 TYPE_1__* cpufreq_driver ;

__attribute__((used)) static inline bool has_target(void)
{
 return cpufreq_driver->target_index || cpufreq_driver->target;
}
