
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdtable {unsigned int size; int cloexec; struct fd** files; } ;
struct fd {int dummy; } ;
typedef scalar_t__ fd_t ;
struct TYPE_2__ {struct fdtable* files; } ;


 int RLIMIT_NOFILE_ ;
 int assert (int) ;
 int bit_clear (scalar_t__,int ) ;
 TYPE_1__* current ;
 int fd_close (struct fd*) ;
 int fdtable_expand (struct fdtable*,scalar_t__) ;
 unsigned int rlimit (int ) ;

__attribute__((used)) static fd_t f_install_start(struct fd *fd, fd_t start) {
    assert(start >= 0);
    struct fdtable *table = current->files;
    unsigned size = rlimit(RLIMIT_NOFILE_);
    if (size > table->size)
        size = table->size;

    fd_t f;
    for (f = start; (unsigned) f < size; f++)
        if (table->files[f] == ((void*)0))
            break;
    if ((unsigned) f >= size) {
        int err = fdtable_expand(table, f);
        if (err < 0)
            f = err;
    }

    if (f >= 0) {
        table->files[f] = fd;
        bit_clear(f, table->cloexec);
    } else {
        fd_close(fd);
    }
    return f;
}
