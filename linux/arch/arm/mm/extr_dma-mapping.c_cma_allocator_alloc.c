
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct arm_dma_alloc_args {int gfp; int coherent_flag; int want_vaddr; int caller; int prot; int size; int dev; } ;


 void* __alloc_from_contiguous (int ,int ,int ,struct page**,int ,int ,int ,int ) ;

__attribute__((used)) static void *cma_allocator_alloc(struct arm_dma_alloc_args *args,
     struct page **ret_page)
{
 return __alloc_from_contiguous(args->dev, args->size, args->prot,
           ret_page, args->caller,
           args->want_vaddr, args->coherent_flag,
           args->gfp);
}
