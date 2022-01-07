
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_dma_free_args {int size; int cpu_addr; } ;


 int __free_from_pool (int ,int ) ;

__attribute__((used)) static void pool_allocator_free(struct arm_dma_free_args *args)
{
 __free_from_pool(args->cpu_addr, args->size);
}
