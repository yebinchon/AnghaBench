
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int path ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int MAX_PATH ;
 int STRACE (char*,scalar_t__,char*,...) ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* at_fd (int ) ;
 scalar_t__ generic_readlinkat (struct fd*,char*,char*,int) ;
 scalar_t__ user_read_string (int ,char*,int) ;
 scalar_t__ user_write (int ,char*,scalar_t__) ;

dword_t sys_readlinkat(fd_t at_f, addr_t path_addr, addr_t buf_addr, dword_t bufsize) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("readlinkat(%d, \"%s\", %#x, %#x)", at_f, path, buf_addr, bufsize);
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    char buf[bufsize];
    ssize_t size = generic_readlinkat(at, path, buf, bufsize);
    if (size >= 0) {
        STRACE(" \"%.*s\"", size, buf);
        if (user_write(buf_addr, buf, size))
            return _EFAULT;
    }
    return size;
}
