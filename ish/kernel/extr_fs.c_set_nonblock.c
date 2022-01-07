
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef scalar_t__ dword_t ;
typedef int addr_t ;


 int O_NONBLOCK_ ;
 int _EFAULT ;
 int fd_getflags (struct fd*) ;
 int fd_setflags (struct fd*,int) ;
 scalar_t__ user_get (int ,scalar_t__) ;

__attribute__((used)) static int set_nonblock(struct fd *fd, addr_t nb_addr) {
    dword_t nonblock;
    if (user_get(nb_addr, nonblock))
        return _EFAULT;
    int flags = fd_getflags(fd);
    if (nonblock)
        flags |= O_NONBLOCK_;
    else
        flags &= ~O_NONBLOCK_;
    return fd_setflags(fd, flags);
}
