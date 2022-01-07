
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int mode; } ;
struct TYPE_3__ {int show; TYPE_2__ attr; } ;
struct powercap_attr {int handle; TYPE_1__ attr; } ;


 int powercap_show ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static void powercap_add_attr(int handle, const char *name,
         struct powercap_attr *attr)
{
 attr->handle = handle;
 sysfs_attr_init(&attr->attr.attr);
 attr->attr.attr.name = name;
 attr->attr.attr.mode = 0444;
 attr->attr.show = powercap_show;
}
