
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdtable {int cloexec; struct fd** files; } ;
struct fd {int dummy; } ;
typedef int int_t ;
typedef size_t fd_t ;
typedef int dword_t ;
struct TYPE_2__ {struct fdtable* files; } ;


 int O_CLOEXEC_ ;
 int STRACE (char*,size_t,size_t,int) ;
 int _EBADF ;
 int bit_set (size_t,int ) ;
 TYPE_1__* current ;
 int f_close (size_t) ;
 struct fd* f_get (size_t) ;
 int fd_retain (struct fd*) ;
 int fdtable_expand (struct fdtable*,size_t) ;

dword_t sys_dup3(fd_t f, fd_t new_f, int_t flags) {
    STRACE("dup3(%d, %d, %d)", f, new_f, flags);
    struct fdtable *table = current->files;
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    int err = fdtable_expand(table, new_f);
    if (err < 0)
        return err;
    fd_retain(fd);
    f_close(new_f);
    table->files[new_f] = fd;
    if (flags & O_CLOEXEC_)
        bit_set(new_f, table->cloexec);
    return new_f;
}
