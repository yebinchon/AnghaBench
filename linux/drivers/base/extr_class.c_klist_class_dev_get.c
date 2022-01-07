
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;
struct device {int dummy; } ;


 int get_device (struct device*) ;
 struct device* klist_class_to_dev (struct klist_node*) ;

__attribute__((used)) static void klist_class_dev_get(struct klist_node *n)
{
 struct device *dev = klist_class_to_dev(n);

 get_device(dev);
}
