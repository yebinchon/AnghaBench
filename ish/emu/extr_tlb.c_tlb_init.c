
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb {int dirty_page; struct mem* mem; } ;
struct mem {int dummy; } ;


 int TLB_PAGE_EMPTY ;
 int tlb_flush (struct tlb*) ;

void tlb_init(struct tlb *tlb, struct mem *mem) {
    tlb->mem = mem;
    tlb->dirty_page = TLB_PAGE_EMPTY;
    tlb_flush(tlb);
}
