
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver {int (* probe ) (struct vio_dev*,struct vio_device_id const*) ;int no_irq; int id_table; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {scalar_t__ tx_irq; unsigned long tx_ino; scalar_t__ rx_irq; unsigned long rx_ino; int cdev_handle; } ;
struct device {int driver; } ;


 int ENODEV ;
 int stub1 (struct vio_dev*,struct vio_device_id const*) ;
 void* sun4v_build_virq (int ,unsigned long) ;
 struct vio_dev* to_vio_dev (struct device*) ;
 struct vio_driver* to_vio_driver (int ) ;
 struct vio_device_id* vio_match_device (int ,struct vio_dev*) ;

__attribute__((used)) static int vio_device_probe(struct device *dev)
{
 struct vio_dev *vdev = to_vio_dev(dev);
 struct vio_driver *drv = to_vio_driver(dev->driver);
 const struct vio_device_id *id;

 if (!drv->probe)
  return -ENODEV;

 id = vio_match_device(drv->id_table, vdev);
 if (!id)
  return -ENODEV;


 if (!drv->no_irq) {
  if (vdev->tx_irq == 0 && vdev->tx_ino != ~0UL)
   vdev->tx_irq = sun4v_build_virq(vdev->cdev_handle,
       vdev->tx_ino);

  if (vdev->rx_irq == 0 && vdev->rx_ino != ~0UL)
   vdev->rx_irq = sun4v_build_virq(vdev->cdev_handle,
       vdev->rx_ino);
 }

 return drv->probe(vdev, id);
}
