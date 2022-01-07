
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int refcount; } ;
typedef int fd_t ;
typedef int dword_t ;


 int STRACE (char*,int ) ;
 int _EBADF ;
 struct fd* f_get (int ) ;
 int f_install (struct fd*,int ) ;

dword_t sys_dup(fd_t f) {
    STRACE("dup(%d)", f);
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    fd->refcount++;
    return f_install(fd, 0);
}
