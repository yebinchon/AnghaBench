
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int topology_physical_package_id (int) ;

__attribute__((used)) static inline int raw_cpu_to_cluster(int cpu)
{
 return topology_physical_package_id(cpu);
}
