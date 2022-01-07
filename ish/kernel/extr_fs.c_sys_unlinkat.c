
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef int path ;
typedef int int_t ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int AT_REMOVEDIR_ ;
 int MAX_PATH ;
 int STRACE (char*,int ,char*,int) ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* at_fd (int ) ;
 int generic_rmdirat (struct fd*,char*) ;
 int generic_unlinkat (struct fd*,char*) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_unlinkat(fd_t at_f, addr_t path_addr, int_t flags) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("unlinkat(%d, \"%s\", %d)", at_f, path, flags);
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    if (flags & AT_REMOVEDIR_)
        return generic_rmdirat(at, path);
    else
        return generic_unlinkat(at, path);
}
