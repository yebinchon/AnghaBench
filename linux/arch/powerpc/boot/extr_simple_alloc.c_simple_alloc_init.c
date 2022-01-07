
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alloc_info {int dummy; } ;
struct TYPE_2__ {int realloc; int free; int malloc; } ;


 unsigned long _ALIGN_UP (unsigned long,int) ;
 int alloc_min ;
 struct alloc_info* alloc_tbl ;
 int memset (struct alloc_info*,int ,unsigned long) ;
 unsigned long next_base ;
 TYPE_1__ platform_ops ;
 int simple_free ;
 int simple_malloc ;
 int simple_realloc ;
 unsigned long space_left ;
 int tbl_entries ;

void *simple_alloc_init(char *base, unsigned long heap_size,
   unsigned long granularity, unsigned long max_allocs)
{
 unsigned long heap_base, tbl_size;

 heap_size = _ALIGN_UP(heap_size, granularity);
 alloc_min = granularity;
 tbl_entries = max_allocs;

 tbl_size = tbl_entries * sizeof(struct alloc_info);

 alloc_tbl = (struct alloc_info *)_ALIGN_UP((unsigned long)base, 8);
 memset(alloc_tbl, 0, tbl_size);

 heap_base = _ALIGN_UP((unsigned long)alloc_tbl + tbl_size, alloc_min);

 next_base = heap_base;
 space_left = heap_size;

 platform_ops.malloc = simple_malloc;
 platform_ops.free = simple_free;
 platform_ops.realloc = simple_realloc;

 return (void *)(heap_base + heap_size);
}
