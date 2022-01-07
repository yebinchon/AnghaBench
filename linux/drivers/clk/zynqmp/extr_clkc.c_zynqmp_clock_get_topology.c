
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct topology_resp {int topology; } ;
struct clock_topology {int dummy; } ;
struct TYPE_2__ {int clk_id; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int END_OF_TOPOLOGY_NODE ;
 int MAX_NODES ;
 int __zynqmp_clock_get_topology (struct clock_topology*,struct topology_resp*,size_t*) ;
 TYPE_1__* clock ;
 int zynqmp_pm_clock_get_topology (int ,int,struct topology_resp*) ;

__attribute__((used)) static int zynqmp_clock_get_topology(u32 clk_id,
         struct clock_topology *topology,
         u32 *num_nodes)
{
 int j, ret;
 struct topology_resp response = { };

 *num_nodes = 0;
 for (j = 0; j <= MAX_NODES; j += ARRAY_SIZE(response.topology)) {
  ret = zynqmp_pm_clock_get_topology(clock[clk_id].clk_id, j,
         &response);
  if (ret)
   return ret;
  ret = __zynqmp_clock_get_topology(topology, &response,
        num_nodes);
  if (ret == END_OF_TOPOLOGY_NODE)
   return 0;
 }

 return 0;
}
