
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int cpus_allowed; } ;
struct cpumask {int dummy; } ;


 scalar_t__ cpumask_intersects (struct cpumask const*,int *) ;
 struct cpumask* cpumask_of_node (int) ;
 scalar_t__ nr_cpus_node (int) ;

__attribute__((used)) static int __node_allowed(struct spu_context *ctx, int node)
{
 if (nr_cpus_node(node)) {
  const struct cpumask *mask = cpumask_of_node(node);

  if (cpumask_intersects(mask, &ctx->cpus_allowed))
   return 1;
 }

 return 0;
}
