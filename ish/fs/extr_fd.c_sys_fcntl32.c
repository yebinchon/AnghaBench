
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_t ;
typedef int dword_t ;





 int _EINVAL ;
 int sys_fcntl (int ,int,int) ;

dword_t sys_fcntl32(fd_t fd, dword_t cmd, dword_t arg) {
    switch (cmd) {
        case 130:
        case 129:
        case 128:
            return _EINVAL;
    }
    return sys_fcntl(fd, cmd, arg);
}
