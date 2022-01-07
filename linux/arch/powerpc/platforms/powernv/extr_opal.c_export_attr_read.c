
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int size; int private; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int memory_read_from_buffer (char*,size_t,int *,int ,int ) ;

__attribute__((used)) static ssize_t export_attr_read(struct file *fp, struct kobject *kobj,
    struct bin_attribute *bin_attr, char *buf,
    loff_t off, size_t count)
{
 return memory_read_from_buffer(buf, count, &off, bin_attr->private,
           bin_attr->size);
}
