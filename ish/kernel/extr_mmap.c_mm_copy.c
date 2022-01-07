
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct mm {int refcount; TYPE_1__ mem; int exefile; } ;


 int MEM_PAGES ;
 int fd_retain (int ) ;
 struct mm* malloc (int) ;
 int mem_init (TYPE_1__*) ;
 int pt_copy_on_write (TYPE_1__*,TYPE_1__*,int ,int ) ;
 int read_wrlock (int *) ;
 int read_wrunlock (int *) ;

struct mm *mm_copy(struct mm *mm) {
    struct mm *new_mm = malloc(sizeof(struct mm));
    if (new_mm == ((void*)0))
        return ((void*)0);
    *new_mm = *mm;
    new_mm->refcount = 1;
    mem_init(&new_mm->mem);
    fd_retain(new_mm->exefile);
    read_wrlock(&mm->mem.lock);
    pt_copy_on_write(&mm->mem, &new_mm->mem, 0, MEM_PAGES);
    read_wrunlock(&mm->mem.lock);
    return new_mm;
}
