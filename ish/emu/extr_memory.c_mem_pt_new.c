
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_entry {int dummy; } ;
struct mem {int pgdir_used; struct pt_entry** pgdir; } ;
typedef int page_t ;


 int MEM_PGDIR_SIZE ;
 size_t PGDIR_BOTTOM (int ) ;
 size_t PGDIR_TOP (int ) ;
 struct pt_entry* calloc (int ,int) ;

__attribute__((used)) static struct pt_entry *mem_pt_new(struct mem *mem, page_t page) {
    struct pt_entry *pgdir = mem->pgdir[PGDIR_TOP(page)];
    if (pgdir == ((void*)0)) {
        pgdir = mem->pgdir[PGDIR_TOP(page)] = calloc(MEM_PGDIR_SIZE, sizeof(struct pt_entry));
        mem->pgdir_used++;
    }
    return &pgdir[PGDIR_BOTTOM(page)];
}
