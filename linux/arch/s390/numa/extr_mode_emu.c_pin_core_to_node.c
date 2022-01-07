
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* to_node_id; int total; int * per_node; } ;


 int NODE_ID_FREE ;
 int WARN_ON (int) ;
 TYPE_1__* emu_cores ;

__attribute__((used)) static void pin_core_to_node(int core_id, int node_id)
{
 if (emu_cores->to_node_id[core_id] == NODE_ID_FREE) {
  emu_cores->per_node[node_id]++;
  emu_cores->to_node_id[core_id] = node_id;
  emu_cores->total++;
 } else {
  WARN_ON(emu_cores->to_node_id[core_id] != node_id);
 }
}
