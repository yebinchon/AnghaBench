
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int pr_err (char*) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t force_remove_store(struct kobject *kobj,
      struct kobj_attribute *attr,
      const char *buf, size_t size)
{
 bool val;
 int ret;

 ret = strtobool(buf, &val);
 if (ret < 0)
  return ret;

 if (val) {
  pr_err("Enabling force_remove is not supported anymore. Please report to linux-acpi@vger.kernel.org if you depend on this functionality\n");
  return -EINVAL;
 }
 return size;
}
