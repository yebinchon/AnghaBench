
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fdtable {int size; int lock; TYPE_1__** cloexec; TYPE_1__** files; } ;
struct fd {int dummy; } ;
typedef int fd_t ;
struct TYPE_3__ {int refcount; } ;


 int BITS_SIZE (int) ;
 scalar_t__ IS_ERR (struct fdtable*) ;
 struct fdtable* fdtable_new (int) ;
 int lock (int *) ;
 int memcpy (TYPE_1__**,TYPE_1__**,int) ;
 int unlock (int *) ;

struct fdtable *fdtable_copy(struct fdtable *table) {
    lock(&table->lock);
    int size = table->size;
    struct fdtable *new_table = fdtable_new(size);
    if (IS_ERR(new_table)) {
        unlock(&table->lock);
        return new_table;
    }
    memcpy(new_table->files, table->files, sizeof(struct fd *) * size);
    for (fd_t f = 0; f < size; f++)
        if (new_table->files[f])
            new_table->files[f]->refcount++;
    memcpy(new_table->cloexec, table->cloexec, BITS_SIZE(size));
    unlock(&table->lock);
    return new_table;
}
