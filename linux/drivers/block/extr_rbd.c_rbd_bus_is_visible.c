
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int mode; } ;
struct TYPE_4__ {struct attribute attr; } ;
struct TYPE_3__ {struct attribute attr; } ;


 TYPE_2__ bus_attr_add_single_major ;
 TYPE_1__ bus_attr_remove_single_major ;
 int single_major ;

__attribute__((used)) static umode_t rbd_bus_is_visible(struct kobject *kobj,
      struct attribute *attr, int index)
{
 if (!single_major &&
     (attr == &bus_attr_add_single_major.attr ||
      attr == &bus_attr_remove_single_major.attr))
  return 0;

 return attr->mode;
}
