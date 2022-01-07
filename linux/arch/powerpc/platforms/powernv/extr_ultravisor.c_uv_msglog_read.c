
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int memcons_copy (int ,char*,int ,size_t) ;
 int uv_memcons ;

__attribute__((used)) static ssize_t uv_msglog_read(struct file *file, struct kobject *kobj,
         struct bin_attribute *bin_attr, char *to,
         loff_t pos, size_t count)
{
 return memcons_copy(uv_memcons, to, pos, count);
}
