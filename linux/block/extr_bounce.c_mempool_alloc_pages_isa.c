
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_DMA ;
 void* mempool_alloc_pages (int,void*) ;

__attribute__((used)) static void *mempool_alloc_pages_isa(gfp_t gfp_mask, void *data)
{
 return mempool_alloc_pages(gfp_mask | GFP_DMA, data);
}
