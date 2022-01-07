
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pages_devres {unsigned long addr; unsigned int order; } ;
struct device {int dummy; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 unsigned long __get_free_pages (int ,unsigned int) ;
 int devm_pages_release ;
 int devres_add (struct device*,struct pages_devres*) ;
 struct pages_devres* devres_alloc (int ,int,int ) ;
 int free_pages (unsigned long,unsigned int) ;
 scalar_t__ unlikely (int) ;

unsigned long devm_get_free_pages(struct device *dev,
      gfp_t gfp_mask, unsigned int order)
{
 struct pages_devres *devres;
 unsigned long addr;

 addr = __get_free_pages(gfp_mask, order);

 if (unlikely(!addr))
  return 0;

 devres = devres_alloc(devm_pages_release,
         sizeof(struct pages_devres), GFP_KERNEL);
 if (unlikely(!devres)) {
  free_pages(addr, order);
  return 0;
 }

 devres->addr = addr;
 devres->order = order;

 devres_add(dev, devres);
 return addr;
}
