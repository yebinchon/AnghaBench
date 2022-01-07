
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;


 void* devm_kmalloc (struct device*,size_t,int ) ;
 int memcpy (void*,void const*,size_t) ;

void *devm_kmemdup(struct device *dev, const void *src, size_t len, gfp_t gfp)
{
 void *p;

 p = devm_kmalloc(dev, len, gfp);
 if (p)
  memcpy(p, src, len);

 return p;
}
