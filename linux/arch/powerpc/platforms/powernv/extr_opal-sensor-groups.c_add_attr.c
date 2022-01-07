
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mode; int name; } ;
struct TYPE_4__ {int store; TYPE_2__ attr; } ;
struct sg_attr {int handle; TYPE_1__ attr; } ;
struct TYPE_6__ {int store; int attr_name; } ;


 TYPE_3__* ops_info ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static void add_attr(int handle, struct sg_attr *attr, int index)
{
 attr->handle = handle;
 sysfs_attr_init(&attr->attr.attr);
 attr->attr.attr.name = ops_info[index].attr_name;
 attr->attr.attr.mode = 0220;
 attr->attr.store = ops_info[index].store;
}
