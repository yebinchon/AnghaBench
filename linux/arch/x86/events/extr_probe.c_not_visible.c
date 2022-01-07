
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;



__attribute__((used)) static umode_t
not_visible(struct kobject *kobj, struct attribute *attr, int i)
{
 return 0;
}
