
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_kernel_vmap_range_args {unsigned long vaddr; int size; } ;


 int R4K_HIT ;
 int R4K_INDEX ;
 int dcache_size ;
 int local_r4k_flush_kernel_vmap_range ;
 int local_r4k_flush_kernel_vmap_range_index ;
 int r4k_on_each_cpu (int ,int ,struct flush_kernel_vmap_range_args*) ;

__attribute__((used)) static void r4k_flush_kernel_vmap_range(unsigned long vaddr, int size)
{
 struct flush_kernel_vmap_range_args args;

 args.vaddr = (unsigned long) vaddr;
 args.size = size;

 if (size >= dcache_size)
  r4k_on_each_cpu(R4K_INDEX,
    local_r4k_flush_kernel_vmap_range_index, ((void*)0));
 else
  r4k_on_each_cpu(R4K_HIT, local_r4k_flush_kernel_vmap_range,
    &args);
}
