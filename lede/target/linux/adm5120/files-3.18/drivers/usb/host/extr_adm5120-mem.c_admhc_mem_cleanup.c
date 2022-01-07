
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct admhcd {int * ed_cache; int * td_cache; } ;


 int dma_pool_destroy (int *) ;

__attribute__((used)) static void admhc_mem_cleanup(struct admhcd *ahcd)
{
 if (ahcd->td_cache) {
  dma_pool_destroy(ahcd->td_cache);
  ahcd->td_cache = ((void*)0);
 }

 if (ahcd->ed_cache) {
  dma_pool_destroy(ahcd->ed_cache);
  ahcd->ed_cache = ((void*)0);
 }
}
