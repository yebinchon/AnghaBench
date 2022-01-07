
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem {int dummy; } ;
typedef int pages_t ;
typedef int page_t ;


 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 unsigned int P_ANONYMOUS ;
 void* mmap (int *,int,int,int,int ,int ) ;
 int pt_map (struct mem*,int ,int,void*,int ,unsigned int) ;

int pt_map_nothing(struct mem *mem, page_t start, pages_t pages, unsigned flags) {
    if (pages == 0) return 0;
    void *memory = mmap(((void*)0), pages * PAGE_SIZE,
            PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    return pt_map(mem, start, pages, memory, 0, flags | P_ANONYMOUS);
}
