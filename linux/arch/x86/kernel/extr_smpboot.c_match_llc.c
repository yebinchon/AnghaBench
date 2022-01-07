
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int cpu_index; } ;


 scalar_t__ BAD_APICID ;
 int cpu_llc_id ;
 scalar_t__ per_cpu (int ,int) ;
 int snc_cpu ;
 int topology_same_node (struct cpuinfo_x86*,struct cpuinfo_x86*) ;
 int topology_sane (struct cpuinfo_x86*,struct cpuinfo_x86*,char*) ;
 scalar_t__ x86_match_cpu (int ) ;

__attribute__((used)) static bool match_llc(struct cpuinfo_x86 *c, struct cpuinfo_x86 *o)
{
 int cpu1 = c->cpu_index, cpu2 = o->cpu_index;


 if (per_cpu(cpu_llc_id, cpu1) == BAD_APICID)
  return 0;


 if (per_cpu(cpu_llc_id, cpu1) != per_cpu(cpu_llc_id, cpu2))
  return 0;






 if (!topology_same_node(c, o) && x86_match_cpu(snc_cpu))
  return 0;

 return topology_sane(c, o, "llc");
}
