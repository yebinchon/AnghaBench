
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fd_t ;
typedef scalar_t__ dword_t ;
typedef int addr_t ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ MMAP_PRIVATE ;
 scalar_t__ MMAP_SHARED ;
 scalar_t__ P_RWX ;
 int STRACE (char*,int ,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int _EINVAL ;
 TYPE_2__* current ;
 int do_mmap (int ,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int write_wrlock (int *) ;
 int write_wrunlock (int *) ;

__attribute__((used)) static addr_t mmap_common(addr_t addr, dword_t len, dword_t prot, dword_t flags, fd_t fd_no, dword_t offset) {
    STRACE("mmap(0x%x, 0x%x, 0x%x, 0x%x, %d, %d)", addr, len, prot, flags, fd_no, offset);
    if (len == 0)
        return _EINVAL;
    if (prot & ~P_RWX)
        return _EINVAL;
    if ((flags & MMAP_PRIVATE) && (flags & MMAP_SHARED))
        return _EINVAL;

    write_wrlock(&current->mem->lock);
    addr_t res = do_mmap(addr, len, prot, flags, fd_no, offset);
    write_wrunlock(&current->mem->lock);
    return res;
}
