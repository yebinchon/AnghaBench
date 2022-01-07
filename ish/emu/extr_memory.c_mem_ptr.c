
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_entry {int flags; int offset; TYPE_1__* data; } ;
struct mem {int jit; } ;
typedef scalar_t__ page_t ;
typedef int addr_t ;
struct TYPE_2__ {void* data; } ;


 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 scalar_t__ MEM_PAGES ;
 int MEM_WRITE ;
 scalar_t__ PAGE (int ) ;
 int PAGE_SIZE ;
 int PGOFFSET (int ) ;
 int PROT_READ ;
 int PROT_WRITE ;
 int P_COW ;
 int P_GROWSDOWN ;
 int P_WRITE ;
 int jit_invalidate_page (int ,scalar_t__) ;
 int mem_changed (struct mem*) ;
 struct pt_entry* mem_pt (struct mem*,scalar_t__) ;
 int memcpy (void*,void*,int ) ;
 void* mmap (int *,int ,int,int,int ,int ) ;
 int pt_map (struct mem*,scalar_t__,int,void*,int ,int) ;
 int pt_map_nothing (struct mem*,scalar_t__,int,int) ;

void *mem_ptr(struct mem *mem, addr_t addr, int type) {
    page_t page = PAGE(addr);
    struct pt_entry *entry = mem_pt(mem, page);

    if (entry == ((void*)0)) {


        page_t p = page + 1;
        while (p < MEM_PAGES && mem_pt(mem, p) == ((void*)0))
            p++;
        if (p >= MEM_PAGES)
            return ((void*)0);
        if (!(mem_pt(mem, p)->flags & P_GROWSDOWN))
            return ((void*)0);
        pt_map_nothing(mem, page, 1, P_WRITE | P_GROWSDOWN);
        entry = mem_pt(mem, page);
    }

    if (entry != ((void*)0) && type == MEM_WRITE) {

        if (!(entry->flags & P_WRITE))
            return ((void*)0);

        if (entry->flags & P_COW) {
            void *data = (char *) entry->data->data + entry->offset;
            void *copy = mmap(((void*)0), PAGE_SIZE, PROT_READ | PROT_WRITE,
                    MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
            memcpy(copy, data, PAGE_SIZE);
            pt_map(mem, page, 1, copy, 0, entry->flags &~ P_COW);
        }





    }

    if (entry == ((void*)0))
        return ((void*)0);
    return entry->data->data + entry->offset + PGOFFSET(addr);
}
