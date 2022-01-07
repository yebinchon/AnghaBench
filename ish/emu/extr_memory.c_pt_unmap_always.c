
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_entry {struct data* data; } ;
struct mem {int jit; } ;
struct data {scalar_t__ refcount; scalar_t__ data; int * fd; int size; } ;
typedef scalar_t__ pages_t ;
typedef scalar_t__ page_t ;


 int die (char*,scalar_t__,int ,int ) ;
 int errno ;
 int fd_close (int *) ;
 int free (struct data*) ;
 int jit_invalidate_page (int ,scalar_t__) ;
 int mem_changed (struct mem*) ;
 int mem_next_page (struct mem*,scalar_t__*) ;
 struct pt_entry* mem_pt (struct mem*,scalar_t__) ;
 int mem_pt_del (struct mem*,scalar_t__) ;
 int munmap (scalar_t__,int ) ;
 int strerror (int ) ;
 scalar_t__ vdso_data ;

int pt_unmap_always(struct mem *mem, page_t start, pages_t pages) {
    for (page_t page = start; page < start + pages; mem_next_page(mem, &page)) {
        struct pt_entry *pt = mem_pt(mem, page);
        if (pt == ((void*)0))
            continue;



        struct data *data = pt->data;
        mem_pt_del(mem, page);
        if (--data->refcount == 0) {

            if (data->data != vdso_data) {
                int err = munmap(data->data, data->size);
                if (err != 0)
                    die("munmap(%p, %lu) failed: %s", data->data, data->size, strerror(errno));
            }
            if (data->fd != ((void*)0)) {
                fd_close(data->fd);
            }
            free(data);
        }
    }
    mem_changed(mem);
    return 0;
}
