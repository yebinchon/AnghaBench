
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu {TYPE_1__* priv1; int node; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int int_route_RW; } ;


 int cpu_to_node (int) ;
 int cpumask_intersects (struct cpumask const*,struct cpumask const*) ;
 struct cpumask* cpumask_of_node (int ) ;
 int iic_get_target_id (int) ;
 scalar_t__ nr_cpus_node (int ) ;
 int out_be64 (int *,int) ;

__attribute__((used)) static void cpu_affinity_set(struct spu *spu, int cpu)
{
 u64 target;
 u64 route;

 if (nr_cpus_node(spu->node)) {
  const struct cpumask *spumask = cpumask_of_node(spu->node),
   *cpumask = cpumask_of_node(cpu_to_node(cpu));

  if (!cpumask_intersects(spumask, cpumask))
   return;
 }

 target = iic_get_target_id(cpu);
 route = target << 48 | target << 32 | target << 16;
 out_be64(&spu->priv1->int_route_RW, route);
}
