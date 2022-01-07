
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef int path ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int MAX_PATH ;
 int STRACE (char*,int ,char*,int ) ;
 int S_IFMT ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* at_fd (int ) ;
 int generic_setattrat (struct fd*,char*,int ,int) ;
 int make_attr (int ,int ) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_fchmodat(fd_t at_f, addr_t path_addr, dword_t mode) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("fchmodat(%d, \"%s\", %o)", at_f, path, mode);
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    mode &= ~S_IFMT;
    return generic_setattrat(at, path, make_attr(mode, mode), 1);
}
