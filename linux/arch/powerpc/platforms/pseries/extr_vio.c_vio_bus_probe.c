
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver {int (* probe ) (struct vio_dev*,struct vio_device_id const*) ;int id_table; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int cmo; } ;
struct device {int driver; } ;


 int ENODEV ;
 int FW_FEATURE_CMO ;
 scalar_t__ firmware_has_feature (int ) ;
 int memset (int *,int ,int) ;
 int stub1 (struct vio_dev*,struct vio_device_id const*) ;
 struct vio_dev* to_vio_dev (struct device*) ;
 struct vio_driver* to_vio_driver (int ) ;
 int vio_cmo_bus_probe (struct vio_dev*) ;
 int vio_cmo_bus_remove (struct vio_dev*) ;
 struct vio_device_id* vio_match_device (int ,struct vio_dev*) ;

__attribute__((used)) static int vio_bus_probe(struct device *dev)
{
 struct vio_dev *viodev = to_vio_dev(dev);
 struct vio_driver *viodrv = to_vio_driver(dev->driver);
 const struct vio_device_id *id;
 int error = -ENODEV;

 if (!viodrv->probe)
  return error;

 id = vio_match_device(viodrv->id_table, viodev);
 if (id) {
  memset(&viodev->cmo, 0, sizeof(viodev->cmo));
  if (firmware_has_feature(FW_FEATURE_CMO)) {
   error = vio_cmo_bus_probe(viodev);
   if (error)
    return error;
  }
  error = viodrv->probe(viodev, id);
  if (error && firmware_has_feature(FW_FEATURE_CMO))
   vio_cmo_bus_remove(viodev);
 }

 return error;
}
