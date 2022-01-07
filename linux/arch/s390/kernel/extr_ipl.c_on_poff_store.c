
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int on_poff_trigger ;
 int set_trigger (char const*,int *,size_t) ;

__attribute__((used)) static ssize_t on_poff_store(struct kobject *kobj,
        struct kobj_attribute *attr,
        const char *buf, size_t len)
{
 return set_trigger(buf, &on_poff_trigger, len);
}
