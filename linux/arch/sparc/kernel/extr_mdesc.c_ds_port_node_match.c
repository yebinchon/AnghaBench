
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
union md_node_info {TYPE_1__ ds_port; } ;



__attribute__((used)) static bool ds_port_node_match(union md_node_info *a_node_info,
          union md_node_info *b_node_info)
{
 if (a_node_info->ds_port.id != b_node_info->ds_port.id)
  return 0;

 return 1;
}
