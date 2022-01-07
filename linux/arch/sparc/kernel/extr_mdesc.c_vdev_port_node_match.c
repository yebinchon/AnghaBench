
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; scalar_t__ parent_cfg_hdl; int name; } ;
union md_node_info {TYPE_1__ vdev_port; } ;


 int MDESC_MAX_STR_LEN ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static bool vdev_port_node_match(union md_node_info *a_node_info,
     union md_node_info *b_node_info)
{
 if (a_node_info->vdev_port.id != b_node_info->vdev_port.id)
  return 0;

 if (a_node_info->vdev_port.parent_cfg_hdl !=
     b_node_info->vdev_port.parent_cfg_hdl)
  return 0;

 if (strncmp(a_node_info->vdev_port.name,
      b_node_info->vdev_port.name, MDESC_MAX_STR_LEN) != 0)
  return 0;

 return 1;
}
