
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct klist_node {int dummy; } ;
struct device_type {int dummy; } ;
struct device {TYPE_1__* p; } ;
struct class_dev_iter {struct device_type const* type; int ki; } ;
struct class {TYPE_2__* p; } ;
struct TYPE_4__ {int klist_devices; } ;
struct TYPE_3__ {struct klist_node knode_class; } ;


 int klist_iter_init_node (int *,int *,struct klist_node*) ;

void class_dev_iter_init(struct class_dev_iter *iter, struct class *class,
    struct device *start, const struct device_type *type)
{
 struct klist_node *start_knode = ((void*)0);

 if (start)
  start_knode = &start->p->knode_class;
 klist_iter_init_node(&class->p->klist_devices, &iter->ki, start_knode);
 iter->type = type;
}
