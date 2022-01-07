
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct arm_dma_alloc_args {int size; } ;


 void* __alloc_from_pool (int ,struct page**) ;

__attribute__((used)) static void *pool_allocator_alloc(struct arm_dma_alloc_args *args,
      struct page **ret_page)
{
 return __alloc_from_pool(args->size, ret_page);
}
