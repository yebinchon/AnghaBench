
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
typedef int pages_t ;
typedef int int_t ;
typedef int addr_t ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {int lock; } ;


 int PAGE (int ) ;
 int PAGE_ROUND_UP (int ) ;
 scalar_t__ PGOFFSET (int ) ;
 int P_RWX ;
 int STRACE (char*,int ,int ,int) ;
 int _EINVAL ;
 TYPE_2__* current ;
 int pt_set_flags (TYPE_1__*,int ,int ,int) ;
 int write_wrlock (int *) ;
 int write_wrunlock (int *) ;

int_t sys_mprotect(addr_t addr, uint_t len, int_t prot) {
    STRACE("mprotect(0x%x, 0x%x, 0x%x)", addr, len, prot);
    if (PGOFFSET(addr) != 0)
        return _EINVAL;
    if (prot & ~P_RWX)
        return _EINVAL;
    pages_t pages = PAGE_ROUND_UP(len);
    write_wrlock(&current->mem->lock);
    int err = pt_set_flags(current->mem, PAGE(addr), pages, prot);
    write_wrunlock(&current->mem->lock);
    return err;
}
