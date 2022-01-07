
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {int refcount; int lock; int * cloexec; int * files; scalar_t__ size; } ;


 struct fdtable* ERR_PTR (int) ;
 int _ENOMEM ;
 int fdtable_resize (struct fdtable*,int) ;
 int free (struct fdtable*) ;
 int lock_init (int *) ;
 struct fdtable* malloc (int) ;

struct fdtable *fdtable_new(int size) {
    struct fdtable *fdt = malloc(sizeof(struct fdtable));
    if (fdt == ((void*)0))
        return ERR_PTR(_ENOMEM);
    fdt->refcount = 1;
    fdt->size = 0;
    fdt->files = ((void*)0);
    fdt->cloexec = ((void*)0);
    lock_init(&fdt->lock);
    int err = fdtable_resize(fdt, size);
    if (err < 0) {
        free(fdt);
        return ERR_PTR(err);
    }
    return fdt;
}
