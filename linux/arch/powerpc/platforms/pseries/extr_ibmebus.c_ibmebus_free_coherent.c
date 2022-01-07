
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int kfree (void*) ;

__attribute__((used)) static void ibmebus_free_coherent(struct device *dev,
      size_t size, void *vaddr,
      dma_addr_t dma_handle,
      unsigned long attrs)
{
 kfree(vaddr);
}
