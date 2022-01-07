
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int attribute_container_add_device (struct device*,int ) ;
 int transport_setup_classdev ;

void transport_setup_device(struct device *dev)
{
 attribute_container_add_device(dev, transport_setup_classdev);
}
