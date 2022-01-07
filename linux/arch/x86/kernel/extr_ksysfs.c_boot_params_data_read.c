
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int boot_params ;
 int memcpy (char*,void*,size_t) ;

__attribute__((used)) static ssize_t boot_params_data_read(struct file *fp, struct kobject *kobj,
         struct bin_attribute *bin_attr,
         char *buf, loff_t off, size_t count)
{
 memcpy(buf, (void *)&boot_params + off, count);
 return count;
}
