
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent_cfg_hdl; int name; int id; } ;
union md_node_info {TYPE_1__ vdev_port; } ;
typedef int u64 ;
struct mdesc_handle {int dummy; } ;


 int GFP_KERNEL ;
 int kstrdup_const (char const*,int ) ;
 void* mdesc_get_property (struct mdesc_handle*,int ,char*,int *) ;
 int * parent_cfg_handle (struct mdesc_handle*,int ) ;

__attribute__((used)) static int get_vdev_port_node_info(struct mdesc_handle *md, u64 node,
       union md_node_info *node_info)
{
 const u64 *parent_cfg_hdlp;
 const char *name;
 const u64 *idp;







 idp = mdesc_get_property(md, node, "id", ((void*)0));
 name = mdesc_get_property(md, node, "name", ((void*)0));
 parent_cfg_hdlp = parent_cfg_handle(md, node);

 if (!idp || !name || !parent_cfg_hdlp)
  return -1;

 node_info->vdev_port.id = *idp;
 node_info->vdev_port.name = kstrdup_const(name, GFP_KERNEL);
 if (!node_info->vdev_port.name)
  return -1;
 node_info->vdev_port.parent_cfg_hdl = *parent_cfg_hdlp;

 return 0;
}
