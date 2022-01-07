
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_entry {int * data; } ;
struct mem {int dummy; } ;
typedef int page_t ;


 struct pt_entry* mem_pt (struct mem*,int ) ;

__attribute__((used)) static void mem_pt_del(struct mem *mem, page_t page) {
    struct pt_entry *entry = mem_pt(mem, page);
    if (entry != ((void*)0))
        entry->data = ((void*)0);
}
