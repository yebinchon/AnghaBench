
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem {int ** pgdir; } ;
typedef scalar_t__ page_t ;


 scalar_t__ MEM_PAGES ;
 scalar_t__ MEM_PGDIR_SIZE ;
 scalar_t__ PGDIR_BOTTOM (scalar_t__) ;
 size_t PGDIR_TOP (scalar_t__) ;

void mem_next_page(struct mem *mem, page_t *page) {
    (*page)++;
    if (*page >= MEM_PAGES)
        return;
    while (*page < MEM_PAGES && mem->pgdir[PGDIR_TOP(*page)] == ((void*)0))
        *page = (*page - PGDIR_BOTTOM(*page)) + MEM_PGDIR_SIZE;
}
