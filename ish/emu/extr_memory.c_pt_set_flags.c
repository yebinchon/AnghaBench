
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_entry {int flags; int offset; TYPE_1__* data; } ;
struct mem {int dummy; } ;
typedef scalar_t__ pages_t ;
typedef scalar_t__ page_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int PROT_READ ;
 int PROT_WRITE ;
 int P_READ ;
 int P_WRITE ;
 int _ENOMEM ;
 int errno_map () ;
 int mem_changed (struct mem*) ;
 struct pt_entry* mem_pt (struct mem*,scalar_t__) ;
 scalar_t__ mprotect (void*,int,int) ;
 int real_page_size ;

int pt_set_flags(struct mem *mem, page_t start, pages_t pages, int flags) {
    for (page_t page = start; page < start + pages; page++)
        if (mem_pt(mem, page) == ((void*)0))
            return _ENOMEM;
    for (page_t page = start; page < start + pages; page++) {
        struct pt_entry *entry = mem_pt(mem, page);
        int old_flags = entry->flags;
        entry->flags = flags;

        if ((flags & ~old_flags) & (P_READ|P_WRITE)) {
            void *data = (char *) entry->data->data + entry->offset;

            data = (void *) ((uintptr_t) data & ~(real_page_size - 1));
            int prot = PROT_READ;
            if (flags & P_WRITE) prot |= PROT_WRITE;
            if (mprotect(data, real_page_size, prot) < 0)
                return errno_map();
        }
    }
    mem_changed(mem);
    return 0;
}
