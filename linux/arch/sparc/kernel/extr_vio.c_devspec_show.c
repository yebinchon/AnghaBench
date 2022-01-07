
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char const*) ;
 int strcmp (int ,char*) ;
 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static ssize_t devspec_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct vio_dev *vdev = to_vio_dev(dev);
 const char *str = "none";

 if (!strcmp(vdev->type, "vnet-port"))
  str = "vnet";
 else if (!strcmp(vdev->type, "vdc-port"))
  str = "vdisk";

 return sprintf(buf, "%s\n", str);
}
