
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union device_attr_group_devres {void* group; } ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_attr_group_match(struct device *dev, void *res, void *data)
{
 return ((union device_attr_group_devres *)res)->group == data;
}
