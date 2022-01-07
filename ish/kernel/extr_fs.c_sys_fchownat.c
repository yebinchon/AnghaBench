
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct fd {int dummy; } ;
typedef int path ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int AT_SYMLINK_NOFOLLOW_ ;
 int MAX_PATH ;
 int STRACE (char*,int ,char*,int,int,int) ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* at_fd (int ) ;
 int generic_setattrat (struct fd*,char*,int ,int) ;
 int gid ;
 int make_attr (int ,int) ;
 int uid ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_fchownat(fd_t at_f, addr_t path_addr, dword_t owner, dword_t group, int flags) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("fchownat(%d, \"%s\", %d, %d, %d)", at_f, path, owner, group, flags);
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    int err;
    bool follow_links = flags & AT_SYMLINK_NOFOLLOW_ ? 0 : 1;
    if (owner != (uid_t) -1) {
        err = generic_setattrat(at, path, make_attr(uid, owner), follow_links);
        if (err < 0)
            return err;
    }
    if (group != (uid_t) -1) {
        err = generic_setattrat(at, path, make_attr(gid, group), follow_links);
        if (err < 0)
            return err;
    }
    return 0;
}
