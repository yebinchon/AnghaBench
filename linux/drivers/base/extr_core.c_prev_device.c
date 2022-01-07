
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;
struct klist_iter {int dummy; } ;
struct device_private {struct device* device; } ;
struct device {int dummy; } ;


 struct klist_node* klist_prev (struct klist_iter*) ;
 struct device_private* to_device_private_parent (struct klist_node*) ;

__attribute__((used)) static struct device *prev_device(struct klist_iter *i)
{
 struct klist_node *n = klist_prev(i);
 struct device *dev = ((void*)0);
 struct device_private *p;

 if (n) {
  p = to_device_private_parent(n);
  dev = p->device;
 }
 return dev;
}
