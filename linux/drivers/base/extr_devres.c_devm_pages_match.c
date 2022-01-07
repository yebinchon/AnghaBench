
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pages_devres {scalar_t__ addr; } ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_pages_match(struct device *dev, void *res, void *p)
{
 struct pages_devres *devres = res;
 struct pages_devres *target = p;

 return devres->addr == target->addr;
}
