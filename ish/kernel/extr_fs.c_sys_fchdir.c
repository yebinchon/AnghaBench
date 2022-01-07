
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int refcount; } ;
typedef int fd_t ;
typedef int dword_t ;
struct TYPE_2__ {int fs; } ;


 int STRACE (char*,int ) ;
 int _EBADF ;
 TYPE_1__* current ;
 struct fd* f_get (int ) ;
 int fs_chdir (int ,struct fd*) ;

dword_t sys_fchdir(fd_t f) {
    STRACE("fchdir(%d)", f);
    struct fd *dir = f_get(f);
    if (dir == ((void*)0))
        return _EBADF;
    dir->refcount++;
    fs_chdir(current->fs, dir);
    return 0;
}
