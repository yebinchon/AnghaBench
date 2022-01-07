
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {scalar_t__ refcount; unsigned int size; int lock; struct fdtable* cloexec; struct fdtable* files; } ;
typedef scalar_t__ fd_t ;


 int fdtable_close (struct fdtable*,scalar_t__) ;
 int free (struct fdtable*) ;
 int lock (int *) ;
 int unlock (int *) ;

void fdtable_release(struct fdtable *table) {
    lock(&table->lock);
    if (--table->refcount == 0) {
        for (fd_t f = 0; (unsigned) f < table->size; f++)
            fdtable_close(table, f);
        free(table->files);
        free(table->cloexec);
        unlock(&table->lock);
        free(table);
    } else {
        unlock(&table->lock);
    }
}
