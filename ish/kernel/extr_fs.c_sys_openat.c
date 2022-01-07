
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef int path ;
typedef int mode_t_ ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 scalar_t__ IS_ERR (struct fd*) ;
 int MAX_PATH ;
 int O_CREAT_ ;
 int PTR_ERR (struct fd*) ;
 int STRACE (char*,int ,char*,int,int ) ;
 int _EBADF ;
 int _EFAULT ;
 int apply_umask (int *) ;
 struct fd* at_fd (int ) ;
 int f_install (struct fd*,int) ;
 struct fd* generic_openat (struct fd*,char*,int,int ) ;
 scalar_t__ user_read_string (int ,char*,int) ;

fd_t sys_openat(fd_t at_f, addr_t path_addr, dword_t flags, mode_t_ mode) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("openat(%d, \"%s\", 0x%x, 0x%x)", at_f, path, flags, mode);

    if (flags & O_CREAT_)
        apply_umask(&mode);

    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    struct fd *fd = generic_openat(at, path, flags, mode);
    if (IS_ERR(fd))
        return PTR_ERR(fd);
    return f_install(fd, flags);
}
