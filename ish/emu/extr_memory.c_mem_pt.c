
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_entry {int * data; } ;
struct mem {struct pt_entry** pgdir; } ;
typedef int page_t ;


 size_t PGDIR_BOTTOM (int ) ;
 size_t PGDIR_TOP (int ) ;

struct pt_entry *mem_pt(struct mem *mem, page_t page) {
    struct pt_entry *pgdir = mem->pgdir[PGDIR_TOP(page)];
    if (pgdir == ((void*)0))
        return ((void*)0);
    struct pt_entry *entry = &pgdir[PGDIR_BOTTOM(page)];
    if (entry->data == ((void*)0))
        return ((void*)0);
    return entry;
}
