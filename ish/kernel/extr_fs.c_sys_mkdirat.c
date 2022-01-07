
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


 int MAX_PATH ;
 int STRACE (char*,int ,char*,int) ;
 int _EBADF ;
 int _EFAULT ;
 int apply_umask (int*) ;
 struct fd* at_fd (int ) ;
 int generic_mkdirat (struct fd*,char*,int) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_mkdirat(fd_t at_f, addr_t path_addr, mode_t_ mode) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("mkdirat(%d, %s, 0%o)", at_f, path, mode);
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    apply_umask(&mode);
    mode &= 0777;
    return generic_mkdirat(at, path, mode);
}
