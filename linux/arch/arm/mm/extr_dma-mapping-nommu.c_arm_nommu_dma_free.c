
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int WARN_ON_ONCE (int) ;
 int dma_release_from_global_coherent (int ,void*) ;
 int get_order (size_t) ;

__attribute__((used)) static void arm_nommu_dma_free(struct device *dev, size_t size,
          void *cpu_addr, dma_addr_t dma_addr,
          unsigned long attrs)
{
 int ret = dma_release_from_global_coherent(get_order(size), cpu_addr);

 WARN_ON_ONCE(ret == 0);
}
