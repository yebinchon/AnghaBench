
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vio_dev {int md_node_info; scalar_t__ node_name; } ;
struct mdesc_handle {int dummy; } ;


 int MDESC_NODE_NULL ;
 int mdesc_get_node (struct mdesc_handle*,char const*,int *) ;

u64 vio_vdev_node(struct mdesc_handle *hp, struct vio_dev *vdev)
{
 u64 node;

 if (vdev == ((void*)0))
  return MDESC_NODE_NULL;

 node = mdesc_get_node(hp, (const char *)vdev->node_name,
         &vdev->md_node_info);

 return node;
}
