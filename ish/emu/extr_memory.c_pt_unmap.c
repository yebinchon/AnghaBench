
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem {int dummy; } ;
typedef scalar_t__ pages_t ;
typedef scalar_t__ page_t ;


 int * mem_pt (struct mem*,scalar_t__) ;
 int pt_unmap_always (struct mem*,scalar_t__,scalar_t__) ;

int pt_unmap(struct mem *mem, page_t start, pages_t pages) {
    for (page_t page = start; page < start + pages; page++)
        if (mem_pt(mem, page) == ((void*)0))
            return -1;
    return pt_unmap_always(mem, start, pages);
}
