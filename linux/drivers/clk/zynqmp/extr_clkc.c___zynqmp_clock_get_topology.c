
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct topology_resp {int * topology; } ;
struct clock_topology {void* type_flag; void* flag; scalar_t__ type; } ;


 int ARRAY_SIZE (int *) ;
 int CLK_TOPOLOGY_FLAGS ;
 int CLK_TOPOLOGY_TYPE ;
 int CLK_TOPOLOGY_TYPE_FLAGS ;
 int END_OF_TOPOLOGY_NODE ;
 void* FIELD_GET (int ,int ) ;
 scalar_t__ TYPE_INVALID ;

__attribute__((used)) static int __zynqmp_clock_get_topology(struct clock_topology *topology,
           struct topology_resp *response,
           u32 *nnodes)
{
 int i;
 u32 type;

 for (i = 0; i < ARRAY_SIZE(response->topology); i++) {
  type = FIELD_GET(CLK_TOPOLOGY_TYPE, response->topology[i]);
  if (type == TYPE_INVALID)
   return END_OF_TOPOLOGY_NODE;
  topology[*nnodes].type = type;
  topology[*nnodes].flag = FIELD_GET(CLK_TOPOLOGY_FLAGS,
         response->topology[i]);
  topology[*nnodes].type_flag =
    FIELD_GET(CLK_TOPOLOGY_TYPE_FLAGS,
       response->topology[i]);
  (*nnodes)++;
 }

 return 0;
}
