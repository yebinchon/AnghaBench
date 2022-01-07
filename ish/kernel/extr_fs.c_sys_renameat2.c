
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef int src ;
typedef scalar_t__ int_t ;
typedef int fd_t ;
typedef int dword_t ;
typedef int dst ;
typedef int addr_t ;


 int MAX_PATH ;
 int STRACE (char*,int ,char*,int ,char*) ;
 int _EBADF ;
 int _EFAULT ;
 int _EINVAL ;
 struct fd* at_fd (int ) ;
 int generic_renameat (struct fd*,char*,struct fd*,char*) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_renameat2(fd_t src_at_f, addr_t src_addr, fd_t dst_at_f, addr_t dst_addr, int_t flags) {
    if (flags != 0)
        return _EINVAL;
    char src[MAX_PATH];
    if (user_read_string(src_addr, src, sizeof(src)))
        return _EFAULT;
    char dst[MAX_PATH];
    if (user_read_string(dst_addr, dst, sizeof(dst)))
        return _EFAULT;
    STRACE("renameat(%d, \"%s\", %d, \"%s\")", src_at_f, src, dst_at_f, dst);
    struct fd *src_at = at_fd(src_at_f);
    if (src_at == ((void*)0))
        return _EBADF;
    struct fd *dst_at = at_fd(dst_at_f);
    if (dst_at == ((void*)0))
        return _EBADF;
    return generic_renameat(src_at, src, dst_at, dst);
}
