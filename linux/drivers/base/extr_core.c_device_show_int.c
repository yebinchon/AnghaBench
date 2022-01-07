
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dev_ext_attribute {scalar_t__ var; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct dev_ext_attribute* to_ext_attr (struct device_attribute*) ;

ssize_t device_show_int(struct device *dev,
   struct device_attribute *attr,
   char *buf)
{
 struct dev_ext_attribute *ea = to_ext_attr(attr);

 return snprintf(buf, PAGE_SIZE, "%d\n", *(int *)(ea->var));
}
