
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;


 int CONFIG_OMAP_32K_TIMER ;
 size_t EINVAL ;
 int IS_ENABLED (int ) ;
 unsigned short enable_dyn_sleep ;
 int pr_err (char*) ;
 int sscanf (char const*,char*,unsigned short*) ;

__attribute__((used)) static ssize_t idle_store(struct kobject *kobj, struct kobj_attribute *attr,
     const char * buf, size_t n)
{
 unsigned short value;
 if (sscanf(buf, "%hu", &value) != 1 ||
     (value != 0 && value != 1) ||
     (value != 0 && !IS_ENABLED(CONFIG_OMAP_32K_TIMER))) {
  pr_err("idle_sleep_store: Invalid value\n");
  return -EINVAL;
 }
 enable_dyn_sleep = value;
 return n;
}
