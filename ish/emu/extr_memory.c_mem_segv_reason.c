
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_entry {int flags; } ;
struct mem {int dummy; } ;
typedef int addr_t ;


 int MEM_READ ;
 int MEM_WRITE ;
 int PAGE (int ) ;
 int P_READ ;
 int P_WRITE ;
 int SEGV_ACCERR_ ;
 int SEGV_MAPERR_ ;
 int assert (int) ;
 int die (char*) ;
 struct pt_entry* mem_pt (struct mem*,int ) ;

int mem_segv_reason(struct mem *mem, addr_t addr, int type) {
    assert(type == MEM_READ || type == MEM_WRITE);
    struct pt_entry *pt = mem_pt(mem, PAGE(addr));
    if (pt == ((void*)0))
        return SEGV_MAPERR_;
    if ((type == MEM_READ && !(pt->flags & P_READ)) ||
            (type == MEM_WRITE && !(pt->flags & P_WRITE)))
        return SEGV_ACCERR_;
    die("caught segv for valid access");
}
