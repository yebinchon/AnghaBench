
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb {int dummy; } ;
typedef int addr_t ;


 int PAGE (int) ;
 int PAGE_BITS ;
 size_t PAGE_SIZE ;
 size_t PGOFFSET (int) ;
 char* __tlb_read_ptr (struct tlb*,int) ;
 int assert (int) ;
 int memcpy (char*,char*,unsigned int) ;

bool __tlb_read_cross_page(struct tlb *tlb, addr_t addr, char *value, unsigned size) {
    char *ptr1 = __tlb_read_ptr(tlb, addr);
    char *ptr2 = __tlb_read_ptr(tlb, (PAGE(addr) + 1) << PAGE_BITS);
    if (ptr1 == ((void*)0) || ptr2 == ((void*)0))
        return 0;
    size_t part1 = PAGE_SIZE - PGOFFSET(addr);
    assert(part1 < size);
    memcpy(value, ptr1, part1);
    memcpy(value + part1, ptr2, size - part1);
    return 1;
}
