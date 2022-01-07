
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target ;
struct fd {int dummy; } ;
typedef int link ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int MAX_PATH ;
 int STRACE (char*,char*,int ,char*) ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* at_fd (int ) ;
 int generic_symlinkat (char*,struct fd*,char*) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_symlinkat(addr_t target_addr, fd_t at_f, addr_t link_addr) {
    char target[MAX_PATH];
    if (user_read_string(target_addr, target, sizeof(target)))
        return _EFAULT;
    char link[MAX_PATH];
    if (user_read_string(link_addr, link, sizeof(link)))
        return _EFAULT;
    STRACE("symlinkat(\"%s\", %d, \"%s\")", target, at_f, link);
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    return generic_symlinkat(target, at, link);
}
