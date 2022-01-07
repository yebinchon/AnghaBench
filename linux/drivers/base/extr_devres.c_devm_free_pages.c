
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pages_devres {unsigned long addr; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_pages_match ;
 int devm_pages_release ;
 int devres_release (struct device*,int ,int ,struct pages_devres*) ;

void devm_free_pages(struct device *dev, unsigned long addr)
{
 struct pages_devres devres = { .addr = addr };

 WARN_ON(devres_release(dev, devm_pages_release, devm_pages_match,
          &devres));
}
