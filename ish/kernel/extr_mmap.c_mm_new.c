
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm {int refcount; int * exefile; scalar_t__ brk; scalar_t__ start_brk; int mem; } ;


 struct mm* malloc (int) ;
 int mem_init (int *) ;

struct mm *mm_new() {
    struct mm *mm = malloc(sizeof(struct mm));
    if (mm == ((void*)0))
        return ((void*)0);
    mem_init(&mm->mem);
    mm->start_brk = mm->brk = 0;
    mm->exefile = ((void*)0);
    mm->refcount = 1;
    return mm;
}
