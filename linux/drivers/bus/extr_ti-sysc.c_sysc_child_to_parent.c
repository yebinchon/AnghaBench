
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int dummy; } ;
struct device {int * type; struct device* parent; } ;


 struct sysc* dev_get_drvdata (struct device*) ;
 int sysc_device_type ;

__attribute__((used)) static struct sysc *sysc_child_to_parent(struct device *dev)
{
 struct device *parent = dev->parent;

 if (!parent || parent->type != &sysc_device_type)
  return ((void*)0);

 return dev_get_drvdata(parent);
}
