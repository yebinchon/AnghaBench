
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LG_SIZEOF_PTR ;
 size_t PAGE ;
 size_t pow2_ceil_zu (size_t) ;

__attribute__((used)) static size_t
tcache_bin_stack_alignment (size_t size) {





 if (LG_SIZEOF_PTR < 3 || size < PAGE) {
  return PAGE;
 }

 return pow2_ceil_zu(size);
}
