
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem {int dummy; } ;
typedef int pages_t ;
typedef int page_t ;


 int BAD_PAGE ;
 int * mem_pt (struct mem*,int) ;

page_t pt_find_hole(struct mem *mem, pages_t size) {
    page_t hole_end;
    bool in_hole = 0;
    for (page_t page = 0xf7ffd; page > 0x40000; page--) {

        if (!in_hole && mem_pt(mem, page) == ((void*)0)) {
            in_hole = 1;
            hole_end = page + 1;
        }
        if (mem_pt(mem, page) != ((void*)0))
            in_hole = 0;
        else if (hole_end - page == size)
            return page;
    }
    return BAD_PAGE;
}
