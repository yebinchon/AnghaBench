
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct attribute {char* name; int mode; } ;
struct TYPE_2__ {struct attribute attr; int show; } ;
struct dev_ext_attribute {char* var; TYPE_1__ attr; } ;


 int GFP_KERNEL ;
 int device_show_string ;
 struct dev_ext_attribute* kzalloc (int,int ) ;
 int sysfs_attr_init (struct attribute*) ;

__attribute__((used)) static struct attribute *device_str_attr_create_(char *name, char *str)
{
 struct dev_ext_attribute *attr = kzalloc(sizeof(*attr), GFP_KERNEL);

 if (!attr)
  return ((void*)0);

 sysfs_attr_init(&attr->attr.attr);

 attr->var = str;
 attr->attr.attr.name = name;
 attr->attr.attr.mode = 0444;
 attr->attr.show = device_show_string;

 return &attr->attr.attr;
}
