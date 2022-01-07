
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned long __phys_to_virt (unsigned long) ;
 scalar_t__ kmap_atomic_pfn (unsigned long) ;
 int l2_unmap_va (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned long l2_map_va(unsigned long pa, unsigned long prev_va)
{
 return __phys_to_virt(pa);

}
