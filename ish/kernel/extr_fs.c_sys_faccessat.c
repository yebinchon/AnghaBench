
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uid_t_ ;
struct fd {int dummy; } ;
typedef int path ;
typedef int mode_t_ ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_2__ {void* egid; void* euid; void* gid; void* uid; } ;


 int AT_EACCESS_ ;
 int MAX_PATH ;
 int STRACE (char*,int ,char*,int ,int) ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* at_fd (int ) ;
 TYPE_1__* current ;
 int generic_accessat (struct fd*,char*,int ) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_faccessat(fd_t at_f, addr_t path_addr, mode_t_ mode, dword_t flags) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    STRACE("faccessat(%d, \"%s\", 0x%x, %d)", at_f, path, mode, flags);

    if (flags & AT_EACCESS_)
        return generic_accessat(at, path, mode);

    uid_t_ uid_tmp = current->euid;
    uid_t_ gid_tmp = current->egid;
    current->euid = current->uid;
    current->egid = current->gid;
    int err = generic_accessat(at, path, mode);
    current->euid = uid_tmp;
    current->egid = gid_tmp;
    return err;
}
