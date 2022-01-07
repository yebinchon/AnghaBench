
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int lock; TYPE_1__* ops; } ;
typedef int off_t_ ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_2__ {int (* lseek ) (struct fd*,int,int) ;} ;


 int STRACE (char*,int,...) ;
 int _EBADF ;
 int _EFAULT ;
 int _ESPIPE ;
 struct fd* f_get (int ) ;
 int lock (int *) ;
 int stub1 (struct fd*,int,int) ;
 int unlock (int *) ;
 scalar_t__ user_put (int ,int) ;

dword_t sys__llseek(fd_t f, dword_t off_high, dword_t off_low, addr_t res_addr, dword_t whence) {
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    if (!fd->ops->lseek)
        return _ESPIPE;
    lock(&fd->lock);
    off_t_ off = ((off_t_) off_high << 32) | off_low;
    STRACE("llseek(%d, %lu, %#x, %d)", f, off, res_addr, whence);
    off_t_ res = fd->ops->lseek(fd, off, whence);
    STRACE(" -> %lu", res);
    unlock(&fd->lock);
    if (res < 0)
        return res;
    if (user_put(res_addr, res))
        return _EFAULT;
    return 0;
}
