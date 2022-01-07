
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct class_attribute {int attr; } ;
struct class {TYPE_2__* p; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ subsys; } ;


 int EINVAL ;
 int sysfs_create_file_ns (int *,int *,void const*) ;

int class_create_file_ns(struct class *cls, const struct class_attribute *attr,
    const void *ns)
{
 int error;

 if (cls)
  error = sysfs_create_file_ns(&cls->p->subsys.kobj,
          &attr->attr, ns);
 else
  error = -EINVAL;
 return error;
}
