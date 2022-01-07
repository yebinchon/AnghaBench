
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int attribute_container_remove_attrs (struct device*) ;
 int device_del (struct device*) ;

void
attribute_container_class_device_del(struct device *classdev)
{
 attribute_container_remove_attrs(classdev);
 device_del(classdev);
}
