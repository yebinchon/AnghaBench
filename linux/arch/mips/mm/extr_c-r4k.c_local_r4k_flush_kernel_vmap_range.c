
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_kernel_vmap_range_args {unsigned long vaddr; int size; } ;


 int R4600_HIT_CACHEOP_WAR_IMPL ;
 int blast_dcache_range (unsigned long,unsigned long) ;

__attribute__((used)) static inline void local_r4k_flush_kernel_vmap_range(void *args)
{
 struct flush_kernel_vmap_range_args *vmra = args;
 unsigned long vaddr = vmra->vaddr;
 int size = vmra->size;





 R4600_HIT_CACHEOP_WAR_IMPL;
 blast_dcache_range(vaddr, vaddr + size);
}
