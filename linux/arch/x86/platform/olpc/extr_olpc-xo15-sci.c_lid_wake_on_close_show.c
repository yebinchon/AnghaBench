
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int lid_wake_on_close ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
lid_wake_on_close_show(struct kobject *s, struct kobj_attribute *attr, char *buf)
{
 return sprintf(buf, "%u\n", lid_wake_on_close);
}
