
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int WARN_ON_ONCE (int ) ;
 void* dma_alloc_from_global_coherent (size_t,int *) ;

__attribute__((used)) static void *arm_nommu_dma_alloc(struct device *dev, size_t size,
     dma_addr_t *dma_handle, gfp_t gfp,
     unsigned long attrs)

{
 void *ret = dma_alloc_from_global_coherent(size, dma_handle);
 WARN_ON_ONCE(ret == ((void*)0));
 return ret;
}
