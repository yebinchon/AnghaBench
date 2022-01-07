
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long __phys_to_virt (unsigned long) ;
 void* kmap_atomic_pfn (unsigned long) ;

__attribute__((used)) static inline unsigned long l2_get_va(unsigned long paddr)
{
 return __phys_to_virt(paddr);

}
