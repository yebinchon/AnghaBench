
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t nasid_t ;
struct TYPE_3__ {size_t* g_nasidtable; } ;
typedef TYPE_1__ gda_t ;


 TYPE_1__* GDA ;
 void* INVALID_CNODEID ;
 size_t INVALID_NASID ;
 int MAXCPUS ;
 int MAX_COMPACT_NODES ;
 int MAX_NASIDS ;
 size_t* compact_to_nasid_node ;
 void** cpuid_to_compact_node ;
 int do_cpumask (int,size_t,int) ;
 int* nasid_to_compact_node ;
 int node_online_map ;
 int node_set_online (int ) ;
 int nodes_clear (int ) ;
 int num_online_nodes () ;
 int printk (char*,int,int ) ;

void cpu_node_probe(void)
{
 int i, highest = 0;
 gda_t *gdap = GDA;




 for (i = 0; i < MAX_COMPACT_NODES; i++)
  compact_to_nasid_node[i] = INVALID_NASID;
 for (i = 0; i < MAX_NASIDS; i++)
  nasid_to_compact_node[i] = INVALID_CNODEID;
 for (i = 0; i < MAXCPUS; i++)
  cpuid_to_compact_node[i] = INVALID_CNODEID;





 nodes_clear(node_online_map);
 for (i = 0; i < MAX_COMPACT_NODES; i++) {
  nasid_t nasid = gdap->g_nasidtable[i];
  if (nasid == INVALID_NASID)
   break;
  compact_to_nasid_node[i] = nasid;
  nasid_to_compact_node[nasid] = i;
  node_set_online(num_online_nodes());
  highest = do_cpumask(i, nasid, highest);
 }

 printk("Discovered %d cpus on %d nodes\n", highest + 1, num_online_nodes());
}
