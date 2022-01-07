
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vio_remove_node_data {scalar_t__ node; int hp; } ;
struct vio_dev {int dummy; } ;
struct device {int dummy; } ;


 struct vio_dev* to_vio_dev (struct device*) ;
 scalar_t__ vio_vdev_node (int ,struct vio_dev*) ;

__attribute__((used)) static int vio_md_node_match(struct device *dev, void *arg)
{
 struct vio_dev *vdev = to_vio_dev(dev);
 struct vio_remove_node_data *node_data;
 u64 node;

 node_data = (struct vio_remove_node_data *)arg;

 node = vio_vdev_node(node_data->hp, vdev);

 if (node == node_data->node)
  return 1;
 else
  return 0;
}
