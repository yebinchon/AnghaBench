
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {scalar_t__ dev_no; int type; } ;
struct vdc_check_port_data {scalar_t__ dev_no; int type; } ;
struct device {int dummy; } ;


 scalar_t__ dev_get_drvdata (struct device*) ;
 int strcmp (char*,int ) ;
 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static int vdc_device_probed(struct device *dev, void *arg)
{
 struct vio_dev *vdev = to_vio_dev(dev);
 struct vdc_check_port_data *port_data;

 port_data = (struct vdc_check_port_data *)arg;

 if ((vdev->dev_no == port_data->dev_no) &&
     (!(strcmp((char *)&vdev->type, port_data->type))) &&
  dev_get_drvdata(dev)) {



  return 1;
 } else {
  return 0;
 }
}
