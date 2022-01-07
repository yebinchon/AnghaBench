
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fd_t ;
struct TYPE_4__ {TYPE_1__* files; } ;
struct TYPE_3__ {int lock; } ;


 TYPE_2__* current ;
 int fdtable_close (TYPE_1__*,int ) ;
 int lock (int *) ;
 int unlock (int *) ;

int f_close(fd_t f) {
    lock(&current->files->lock);
    int err = fdtable_close(current->files, f);
    unlock(&current->files->lock);
    return err;
}
