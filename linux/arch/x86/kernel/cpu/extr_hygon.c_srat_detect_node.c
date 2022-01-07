
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {unsigned int apicid; int initial_apicid; } ;
struct TYPE_2__ {int (* fixup_cpu_id ) (struct cpuinfo_x86*,int) ;} ;


 int NUMA_NO_NODE ;
 int* __apicid_to_node ;
 int cpu_llc_id ;
 int nearby_node (unsigned int) ;
 int node_online (int) ;
 int numa_cpu_node (int) ;
 int numa_set_node (int,int) ;
 int per_cpu (int ,int) ;
 int smp_processor_id () ;
 int stub1 (struct cpuinfo_x86*,int) ;
 TYPE_1__ x86_cpuinit ;

__attribute__((used)) static void srat_detect_node(struct cpuinfo_x86 *c)
{
}
