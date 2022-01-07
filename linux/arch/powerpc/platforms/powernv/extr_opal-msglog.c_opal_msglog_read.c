
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int opal_msglog_copy (char*,int ,size_t) ;

__attribute__((used)) static ssize_t opal_msglog_read(struct file *file, struct kobject *kobj,
    struct bin_attribute *bin_attr, char *to,
    loff_t pos, size_t count)
{
 return opal_msglog_copy(to, pos, count);
}
