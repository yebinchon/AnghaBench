
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {int cloexec; int ** files; } ;
struct fd {int * inode; } ;
typedef size_t fd_t ;


 int _EBADF ;
 int bit_clear (size_t,int ) ;
 int fd_close (struct fd*) ;
 struct fd* fdtable_get (struct fdtable*,size_t) ;
 int file_lock_remove_owned_by (struct fd*,struct fdtable*) ;

__attribute__((used)) static int fdtable_close(struct fdtable *table, fd_t f) {
    struct fd *fd = fdtable_get(table, f);
    if (fd == ((void*)0))
        return _EBADF;
    if (fd->inode != ((void*)0))
        file_lock_remove_owned_by(fd, table);
    int err = fd_close(fd);
    table->files[f] = ((void*)0);
    bit_clear(f, table->cloexec);
    return err;
}
