
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_t ;
typedef int base_t ;


 void* base_extent_bump_alloc_helper (int *,size_t*,size_t,size_t) ;
 int base_extent_bump_alloc_post (int *,int *,size_t,void*,size_t) ;

__attribute__((used)) static void *
base_extent_bump_alloc(base_t *base, extent_t *extent, size_t size,
    size_t alignment) {
 void *ret;
 size_t gap_size;

 ret = base_extent_bump_alloc_helper(extent, &gap_size, size, alignment);
 base_extent_bump_alloc_post(base, extent, gap_size, ret, size);
 return ret;
}
