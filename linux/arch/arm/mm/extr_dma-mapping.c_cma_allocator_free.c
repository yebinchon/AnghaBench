
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_dma_free_args {int want_vaddr; int size; int cpu_addr; int page; int dev; } ;


 int __free_from_contiguous (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void cma_allocator_free(struct arm_dma_free_args *args)
{
 __free_from_contiguous(args->dev, args->page, args->cpu_addr,
          args->size, args->want_vaddr);
}
