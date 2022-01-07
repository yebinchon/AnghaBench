
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fdtable {struct fd** files; } ;
struct fd {int dummy; } ;
typedef size_t fd_t ;
struct TYPE_4__ {TYPE_1__* files; } ;
struct TYPE_3__ {unsigned int size; } ;


 TYPE_2__* current ;

struct fd *fdtable_get(struct fdtable *table, fd_t f) {
    if (f < 0 || (unsigned) f >= current->files->size)
        return ((void*)0);
    return table->files[f];
}
