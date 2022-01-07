
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;
struct device {scalar_t__ type; } ;
struct class_dev_iter {scalar_t__ type; int ki; } ;


 struct device* klist_class_to_dev (struct klist_node*) ;
 struct klist_node* klist_next (int *) ;

struct device *class_dev_iter_next(struct class_dev_iter *iter)
{
 struct klist_node *knode;
 struct device *dev;

 while (1) {
  knode = klist_next(&iter->ki);
  if (!knode)
   return ((void*)0);
  dev = klist_class_to_dev(knode);
  if (!iter->type || iter->type == dev->type)
   return dev;
 }
}
