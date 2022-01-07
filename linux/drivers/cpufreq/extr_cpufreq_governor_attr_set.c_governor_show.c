
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct governor_attr {int (* show ) (int ,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int stub1 (int ,char*) ;
 struct governor_attr* to_gov_attr (struct attribute*) ;
 int to_gov_attr_set (struct kobject*) ;

__attribute__((used)) static ssize_t governor_show(struct kobject *kobj, struct attribute *attr,
        char *buf)
{
 struct governor_attr *gattr = to_gov_attr(attr);

 return gattr->show(to_gov_attr_set(kobj), buf);
}
