
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {struct cpumask const drawer_mask; } ;


 TYPE_1__* cpu_topology ;

__attribute__((used)) static const struct cpumask *cpu_drawer_mask(int cpu)
{
 return &cpu_topology[cpu].drawer_mask;
}
