
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_kmalloc_match ;
 int devm_kmalloc_release ;
 int devres_destroy (struct device*,int ,int ,void*) ;
 int is_kernel_rodata (unsigned long) ;
 scalar_t__ unlikely (int ) ;

void devm_kfree(struct device *dev, const void *p)
{
 int rc;





 if (unlikely(is_kernel_rodata((unsigned long)p)))
  return;

 rc = devres_destroy(dev, devm_kmalloc_release,
       devm_kmalloc_match, (void *)p);
 WARN_ON(rc);
}
