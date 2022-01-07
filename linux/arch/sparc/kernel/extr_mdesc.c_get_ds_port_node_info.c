
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
union md_node_info {TYPE_1__ ds_port; } ;
typedef int u64 ;
struct mdesc_handle {int dummy; } ;


 int * mdesc_get_property (struct mdesc_handle*,int ,char*,int *) ;

__attribute__((used)) static int get_ds_port_node_info(struct mdesc_handle *md, u64 node,
     union md_node_info *node_info)
{
 const u64 *idp;


 idp = mdesc_get_property(md, node, "id", ((void*)0));
 if (!idp)
  return -1;

 node_info->ds_port.id = *idp;

 return 0;
}
