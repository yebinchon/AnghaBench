
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* klist_class_to_dev (struct klist_node*) ;
 int put_device (struct device*) ;

__attribute__((used)) static void klist_class_dev_put(struct klist_node *n)
{
 struct device *dev = klist_class_to_dev(n);

 put_device(dev);
}
