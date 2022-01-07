
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {unsigned int size; int lock; int cloexec; } ;
typedef scalar_t__ fd_t ;


 scalar_t__ bit_test (scalar_t__,int ) ;
 int fdtable_close (struct fdtable*,scalar_t__) ;
 int lock (int *) ;
 int unlock (int *) ;

void fdtable_do_cloexec(struct fdtable *table) {
    lock(&table->lock);
    for (fd_t f = 0; (unsigned) f < table->size; f++)
        if (bit_test(f, table->cloexec))
            fdtable_close(table, f);
    unlock(&table->lock);
}
