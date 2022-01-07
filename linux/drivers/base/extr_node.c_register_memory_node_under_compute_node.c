
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct node_access_nodes {TYPE_1__ dev; } ;
struct TYPE_4__ {int kobj; } ;
struct node {TYPE_2__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int dev_name (TYPE_2__*) ;
 struct node** node_devices ;
 struct node_access_nodes* node_init_node_access (struct node*,unsigned int) ;
 int node_online (unsigned int) ;
 int sysfs_add_link_to_group (int *,char*,int *,int ) ;
 int sysfs_remove_link_from_group (int *,char*,int ) ;

int register_memory_node_under_compute_node(unsigned int mem_nid,
         unsigned int cpu_nid,
         unsigned access)
{
 struct node *init_node, *targ_node;
 struct node_access_nodes *initiator, *target;
 int ret;

 if (!node_online(cpu_nid) || !node_online(mem_nid))
  return -ENODEV;

 init_node = node_devices[cpu_nid];
 targ_node = node_devices[mem_nid];
 initiator = node_init_node_access(init_node, access);
 target = node_init_node_access(targ_node, access);
 if (!initiator || !target)
  return -ENOMEM;

 ret = sysfs_add_link_to_group(&initiator->dev.kobj, "targets",
          &targ_node->dev.kobj,
          dev_name(&targ_node->dev));
 if (ret)
  return ret;

 ret = sysfs_add_link_to_group(&target->dev.kobj, "initiators",
          &init_node->dev.kobj,
          dev_name(&init_node->dev));
 if (ret)
  goto err;

 return 0;
 err:
 sysfs_remove_link_from_group(&initiator->dev.kobj, "targets",
         dev_name(&targ_node->dev));
 return ret;
}
