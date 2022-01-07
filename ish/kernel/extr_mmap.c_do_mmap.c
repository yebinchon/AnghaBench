
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fd {TYPE_1__* ops; } ;
typedef int pages_t ;
typedef scalar_t__ page_t ;
typedef int fd_t ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;
struct TYPE_8__ {int mem; } ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_6__ {int file_offset; int fd; } ;
struct TYPE_5__ {int (* mmap ) (struct fd*,int ,scalar_t__,int ,int,int,int) ;} ;


 scalar_t__ BAD_PAGE ;
 int MMAP_ANONYMOUS ;
 int MMAP_FIXED ;
 int MMAP_SHARED ;
 scalar_t__ PAGE (scalar_t__) ;
 scalar_t__ PAGE_BITS ;
 int PAGE_ROUND_UP (int) ;
 scalar_t__ PGOFFSET (scalar_t__) ;
 int P_SHARED ;
 scalar_t__ _EBADF ;
 scalar_t__ _EINVAL ;
 scalar_t__ _ENODEV ;
 scalar_t__ _ENOMEM ;
 TYPE_4__* current ;
 struct fd* f_get (int ) ;
 int fd_retain (struct fd*) ;
 TYPE_3__* mem_pt (int ,scalar_t__) ;
 scalar_t__ pt_find_hole (int ,int ) ;
 int pt_is_hole (int ,scalar_t__,int ) ;
 int pt_map_nothing (int ,scalar_t__,int ,int) ;
 int stub1 (struct fd*,int ,scalar_t__,int ,int,int,int) ;

__attribute__((used)) static addr_t do_mmap(addr_t addr, dword_t len, dword_t prot, dword_t flags, fd_t fd_no, dword_t offset) {
    int err;
    pages_t pages = PAGE_ROUND_UP(len);
    page_t page;
    if (addr != 0) {
        if (PGOFFSET(addr) != 0)
            return _EINVAL;
        page = PAGE(addr);
        if (!(flags & MMAP_FIXED) && !pt_is_hole(current->mem, page, pages)) {
            addr = 0;
        }
    }
    if (addr == 0) {
        page = pt_find_hole(current->mem, pages);
        if (page == BAD_PAGE)
            return _ENOMEM;
    }

    if (flags & MMAP_SHARED)
        prot |= P_SHARED;

    if (flags & MMAP_ANONYMOUS) {
        if ((err = pt_map_nothing(current->mem, page, pages, prot)) < 0)
            return err;
    } else {

        struct fd *fd = f_get(fd_no);
        if (fd == ((void*)0))
            return _EBADF;
        if (fd->ops->mmap == ((void*)0))
            return _ENODEV;
        if ((err = fd->ops->mmap(fd, current->mem, page, pages, offset, prot, flags)) < 0)
            return err;
        mem_pt(current->mem, page)->data->fd = fd_retain(fd);
        mem_pt(current->mem, page)->data->file_offset = offset;
    }
    return page << PAGE_BITS;
}
