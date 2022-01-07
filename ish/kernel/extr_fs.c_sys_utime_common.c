
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;
struct fd {int dummy; } ;
typedef int path ;
typedef int fd_t ;
typedef int dword_t ;
typedef scalar_t__ addr_t ;


 int AT_SYMLINK_NOFOLLOW_ ;
 int MAX_PATH ;
 int STRACE (char*,int ,char*,int ,int ,int ,int ,int) ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* at_fd (int ) ;
 int generic_utime (struct fd*,char*,struct timespec,struct timespec,int) ;
 scalar_t__ user_read_string (scalar_t__,char*,int) ;

__attribute__((used)) static dword_t sys_utime_common(fd_t at_f, addr_t path_addr, struct timespec atime, struct timespec mtime, dword_t flags) {
    char path[MAX_PATH];
    if (path_addr != 0)
        if (user_read_string(path_addr, path, sizeof(path)))
            return _EFAULT;
    STRACE("utimensat(%d, %s, {{%d, %d}, {%d, %d}}, %d)", at_f, path,
            atime.tv_sec, atime.tv_nsec, mtime.tv_sec, mtime.tv_nsec, flags);
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;

    bool follow_links = flags & AT_SYMLINK_NOFOLLOW_ ? 0 : 1;
    return generic_utime(at, path_addr != 0 ? path : ".", atime, mtime, follow_links);
}
