
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int lock; TYPE_1__* ops; } ;
typedef scalar_t__ off_t ;
typedef int fd_t ;
typedef scalar_t__ dword_t ;
struct TYPE_2__ {scalar_t__ (* lseek ) (struct fd*,scalar_t__,scalar_t__) ;} ;


 scalar_t__ _EBADF ;
 scalar_t__ _EOVERFLOW ;
 scalar_t__ _ESPIPE ;
 struct fd* f_get (int ) ;
 int lock (int *) ;
 scalar_t__ stub1 (struct fd*,scalar_t__,scalar_t__) ;
 int unlock (int *) ;

dword_t sys_lseek(fd_t f, dword_t off, dword_t whence) {
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    if (!fd->ops->lseek)
        return _ESPIPE;
    lock(&fd->lock);
    off_t res = fd->ops->lseek(fd, off, whence);
    unlock(&fd->lock);
    if ((dword_t) res != res)
        return _EOVERFLOW;
    return res;
}
