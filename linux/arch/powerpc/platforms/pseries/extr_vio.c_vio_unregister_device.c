
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {scalar_t__ family; int irq; int dev; } ;


 scalar_t__ VDEVICE ;
 int device_unregister (int *) ;
 int irq_dispose_mapping (int ) ;

void vio_unregister_device(struct vio_dev *viodev)
{
 device_unregister(&viodev->dev);
 if (viodev->family == VDEVICE)
  irq_dispose_mapping(viodev->irq);
}
