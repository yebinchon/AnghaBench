
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sq_sysfs_attr {int (* store ) (char const*,size_t) ;} ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 scalar_t__ likely (int (*) (char const*,size_t)) ;
 int stub1 (char const*,size_t) ;
 struct sq_sysfs_attr* to_sq_sysfs_attr (struct attribute*) ;

__attribute__((used)) static ssize_t sq_sysfs_store(struct kobject *kobj, struct attribute *attr,
         const char *buf, size_t count)
{
 struct sq_sysfs_attr *sattr = to_sq_sysfs_attr(attr);

 if (likely(sattr->store))
  return sattr->store(buf, count);

 return -EIO;
}
