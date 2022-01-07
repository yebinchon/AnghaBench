
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold_block {int dummy; } ;
struct threshold_attr {int (* store ) (struct threshold_block*,char const*,size_t) ;} ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct threshold_block*,char const*,size_t) ;
 struct threshold_attr* to_attr (struct attribute*) ;
 struct threshold_block* to_block (struct kobject*) ;

__attribute__((used)) static ssize_t store(struct kobject *kobj, struct attribute *attr,
       const char *buf, size_t count)
{
 struct threshold_block *b = to_block(kobj);
 struct threshold_attr *a = to_attr(attr);
 ssize_t ret;

 ret = a->store ? a->store(b, buf, count) : -EIO;

 return ret;
}
