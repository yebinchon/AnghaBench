
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct device {int dummy; } ;
struct class {int dummy; } ;
typedef int dev_t ;


 struct device* device_create_groups_vargs (struct class*,struct device*,int ,void*,int *,char const*,int ) ;

struct device *device_create_vargs(struct class *class, struct device *parent,
       dev_t devt, void *drvdata, const char *fmt,
       va_list args)
{
 return device_create_groups_vargs(class, parent, devt, drvdata, ((void*)0),
       fmt, args);
}
