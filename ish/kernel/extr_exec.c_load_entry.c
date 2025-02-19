
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct prg_header {scalar_t__ vaddr; scalar_t__ offset; scalar_t__ memsize; scalar_t__ filesize; int flags; } ;
struct fd {TYPE_1__* ops; } ;
typedef scalar_t__ dword_t ;
typedef scalar_t__ addr_t ;
struct TYPE_8__ {int mem; } ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_6__ {scalar_t__ file_offset; int fd; } ;
struct TYPE_5__ {int (* mmap ) (struct fd*,int ,int ,int ,scalar_t__,int,int ) ;} ;


 int MMAP_PRIVATE ;
 int PAGE (scalar_t__) ;
 int PAGE_ROUND_UP (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PGOFFSET (scalar_t__) ;
 int PH_W ;
 int P_READ ;
 int P_WRITE ;
 TYPE_4__* current ;
 int fd_retain (struct fd*) ;
 TYPE_3__* mem_pt (int ,int ) ;
 int pt_map_nothing (int ,int ,int ,int) ;
 int stub1 (struct fd*,int ,int ,int ,scalar_t__,int,int ) ;
 int user_memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int load_entry(struct prg_header ph, addr_t bias, struct fd *fd) {
    int err;

    addr_t addr = ph.vaddr + bias;
    addr_t offset = ph.offset;
    addr_t memsize = ph.memsize;
    addr_t filesize = ph.filesize;

    int flags = P_READ;
    if (ph.flags & PH_W) flags |= P_WRITE;

    if ((err = fd->ops->mmap(fd, current->mem, PAGE(addr),
                    PAGE_ROUND_UP(filesize + PGOFFSET(addr)),
                    offset - PGOFFSET(addr), flags, MMAP_PRIVATE)) < 0)
        return err;

    mem_pt(current->mem, PAGE(addr))->data->fd = fd_retain(fd);
    mem_pt(current->mem, PAGE(addr))->data->file_offset = offset - PGOFFSET(addr);

    if (memsize > filesize) {

        dword_t bss_size = memsize - filesize;



        addr_t file_end = addr + filesize;
        dword_t tail_size = PAGE_SIZE - PGOFFSET(file_end);
        if (tail_size == PAGE_SIZE)

            tail_size = 0;

        if (tail_size != 0)
            user_memset(file_end, 0, tail_size);
        if (tail_size > bss_size)
            tail_size = bss_size;


        if (bss_size - tail_size != 0)
            if ((err = pt_map_nothing(current->mem, PAGE_ROUND_UP(addr + filesize),
                    PAGE_ROUND_UP(bss_size - tail_size), flags)) < 0)
                return err;
    }
    return 0;
}
