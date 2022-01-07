
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* class; } ;
struct TYPE_2__ {int name; } ;


 int strcmp (int ,void*) ;

__attribute__((used)) static int dev_is_class(struct device *dev, void *class)
{
 if (dev->class != ((void*)0) && !strcmp(dev->class->name, class))
  return 1;

 return 0;
}
