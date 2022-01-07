
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;
union md_node_info {TYPE_1__ vdev_port; } ;


 int kfree_const (int *) ;

__attribute__((used)) static void rel_vdev_port_node_info(union md_node_info *node_info)
{
 if (node_info && node_info->vdev_port.name) {
  kfree_const(node_info->vdev_port.name);
  node_info->vdev_port.name = ((void*)0);
 }
}
