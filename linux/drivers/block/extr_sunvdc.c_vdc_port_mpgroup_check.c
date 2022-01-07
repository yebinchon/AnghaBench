
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct vio_dev {TYPE_1__ dev; int type; int dev_no; } ;
struct vdc_check_port_data {char* type; int dev_no; } ;
struct device {int dummy; } ;


 struct device* device_find_child (int ,struct vdc_check_port_data*,int ) ;
 int vdc_device_probed ;

__attribute__((used)) static bool vdc_port_mpgroup_check(struct vio_dev *vdev)
{
 struct vdc_check_port_data port_data;
 struct device *dev;

 port_data.dev_no = vdev->dev_no;
 port_data.type = (char *)&vdev->type;

 dev = device_find_child(vdev->dev.parent, &port_data,
    vdc_device_probed);

 if (dev)
  return 1;

 return 0;
}
