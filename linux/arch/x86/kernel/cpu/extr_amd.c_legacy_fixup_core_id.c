
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int x86; int x86_max_cores; int cpu_core_id; } ;


 int nodes_per_socket ;

__attribute__((used)) static void legacy_fixup_core_id(struct cpuinfo_x86 *c)
{
 u32 cus_per_node;

 if (c->x86 >= 0x17)
  return;

 cus_per_node = c->x86_max_cores / nodes_per_socket;
 c->cpu_core_id %= cus_per_node;
}
