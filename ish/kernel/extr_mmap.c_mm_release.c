
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm {scalar_t__ refcount; int mem; int * exefile; } ;


 int fd_close (int *) ;
 int free (struct mm*) ;
 int mem_destroy (int *) ;

void mm_release(struct mm *mm) {
    if (--mm->refcount == 0) {
        if (mm->exefile != ((void*)0))
            fd_close(mm->exefile);
        mem_destroy(&mm->mem);
        free(mm);
    }
}
