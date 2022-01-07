
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int class_for_each_device (int *,int *,int *,int ) ;
 int devcd_class ;
 int devcd_disabled ;
 int devcd_free ;
 long simple_strtol (char const*,int *,int) ;

__attribute__((used)) static ssize_t disabled_store(struct class *class, struct class_attribute *attr,
         const char *buf, size_t count)
{
 long tmp = simple_strtol(buf, ((void*)0), 10);






 if (tmp != 1)
  return -EINVAL;

 devcd_disabled = 1;

 class_for_each_device(&devcd_class, ((void*)0), ((void*)0), devcd_free);

 return count;
}
