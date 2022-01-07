
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pages_devres {int order; int addr; } ;
struct device {int dummy; } ;


 int free_pages (int ,int ) ;

__attribute__((used)) static void devm_pages_release(struct device *dev, void *res)
{
 struct pages_devres *devres = res;

 free_pages(devres->addr, devres->order);
}
