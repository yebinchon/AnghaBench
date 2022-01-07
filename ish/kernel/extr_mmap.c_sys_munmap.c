
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int int_t ;
typedef int addr_t ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {int lock; } ;


 int PAGE (int ) ;
 int PAGE_ROUND_UP (scalar_t__) ;
 scalar_t__ PGOFFSET (int ) ;
 int STRACE (char*,int ,scalar_t__) ;
 int _EINVAL ;
 TYPE_2__* current ;
 int pt_unmap_always (TYPE_1__*,int ,int ) ;
 int write_wrlock (int *) ;
 int write_wrunlock (int *) ;

int_t sys_munmap(addr_t addr, uint_t len) {
    STRACE("munmap(0x%x, 0x%x)", addr, len);
    if (PGOFFSET(addr) != 0)
        return _EINVAL;
    if (len == 0)
        return _EINVAL;
    write_wrlock(&current->mem->lock);
    int err = pt_unmap_always(current->mem, PAGE(addr), PAGE_ROUND_UP(len));
    write_wrunlock(&current->mem->lock);
    if (err < 0)
        return _EINVAL;
    return 0;
}
