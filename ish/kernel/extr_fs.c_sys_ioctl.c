
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef int fd_t ;
typedef int dword_t ;



 int STRACE (char*,int ,int,int) ;
 int _EBADF ;
 struct fd* f_get (int ) ;
 int fd_ioctl (struct fd*,int,int) ;
 int set_nonblock (struct fd*,int) ;

dword_t sys_ioctl(fd_t f, dword_t cmd, dword_t arg) {
    STRACE("ioctl(%d, 0x%x, 0x%x)", f, cmd, arg);
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;

    switch (cmd) {
        case 128:
            return set_nonblock(fd, arg);
        default:
            return fd_ioctl(fd, cmd, arg);
    }
    return 0;
}
