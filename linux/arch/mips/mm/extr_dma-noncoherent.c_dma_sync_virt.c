
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG () ;



 int dma_cache_inv (unsigned long,size_t) ;
 int dma_cache_wback (unsigned long,size_t) ;
 int dma_cache_wback_inv (unsigned long,size_t) ;

__attribute__((used)) static inline void dma_sync_virt(void *addr, size_t size,
  enum dma_data_direction dir)
{
 switch (dir) {
 case 128:
  dma_cache_wback((unsigned long)addr, size);
  break;

 case 129:
  dma_cache_inv((unsigned long)addr, size);
  break;

 case 130:
  dma_cache_wback_inv((unsigned long)addr, size);
  break;

 default:
  BUG();
 }
}
