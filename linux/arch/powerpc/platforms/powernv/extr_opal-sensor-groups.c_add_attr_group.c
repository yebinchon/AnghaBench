
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int ** attrs; } ;
struct sensor_group {TYPE_2__ sg; TYPE_4__* sgattrs; } ;
typedef int __be32 ;
struct TYPE_6__ {int attr; } ;
struct TYPE_9__ {TYPE_1__ attr; } ;
struct TYPE_8__ {scalar_t__ opal_no; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int add_attr (int ,TYPE_4__*,int) ;
 scalar_t__ be32_to_cpu (int const) ;
 TYPE_3__* ops_info ;
 int sg_kobj ;
 int sysfs_create_group (int ,TYPE_2__*) ;

__attribute__((used)) static int add_attr_group(const __be32 *ops, int len, struct sensor_group *sg,
      u32 handle)
{
 int i, j;
 int count = 0;

 for (i = 0; i < len; i++)
  for (j = 0; j < ARRAY_SIZE(ops_info); j++)
   if (be32_to_cpu(ops[i]) == ops_info[j].opal_no) {
    add_attr(handle, &sg->sgattrs[count], j);
    sg->sg.attrs[count] =
     &sg->sgattrs[count].attr.attr;
    count++;
   }

 return sysfs_create_group(sg_kobj, &sg->sg);
}
