
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;
struct device_private {struct device* device; } ;
struct device {int dummy; } ;


 struct device_private* to_device_private_class (struct klist_node*) ;

__attribute__((used)) static struct device *klist_class_to_dev(struct klist_node *n)
{
 struct device_private *p = to_device_private_class(n);
 return p->device;
}
