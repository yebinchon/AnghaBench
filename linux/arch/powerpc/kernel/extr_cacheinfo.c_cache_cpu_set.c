
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {struct cache* next_local; int shared_cpu_map; int ofnode; } ;


 int WARN_ONCE (int ,char*,int,int ,int ) ;
 int cache_type_string (struct cache*) ;
 int cpumask_set_cpu (int,int *) ;
 int cpumask_test_cpu (int,int *) ;

__attribute__((used)) static void cache_cpu_set(struct cache *cache, int cpu)
{
 struct cache *next = cache;

 while (next) {
  WARN_ONCE(cpumask_test_cpu(cpu, &next->shared_cpu_map),
     "CPU %i already accounted in %pOF(%s)\n",
     cpu, next->ofnode,
     cache_type_string(next));
  cpumask_set_cpu(cpu, &next->shared_cpu_map);
  next = next->next_local;
 }
}
