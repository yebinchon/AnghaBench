
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct vio_dev {TYPE_1__ dev; } ;


 void const* of_get_property (int ,char*,int*) ;

const void *vio_get_attribute(struct vio_dev *vdev, char *which, int *length)
{
 return of_get_property(vdev->dev.of_node, which, length);
}
