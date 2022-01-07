
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_dma_free_args {int size; int page; int cpu_addr; scalar_t__ want_vaddr; } ;


 int __dma_free_buffer (int ,int ) ;
 int dma_common_free_remap (int ,int ) ;

__attribute__((used)) static void remap_allocator_free(struct arm_dma_free_args *args)
{
 if (args->want_vaddr)
  dma_common_free_remap(args->cpu_addr, args->size);

 __dma_free_buffer(args->page, args->size);
}
