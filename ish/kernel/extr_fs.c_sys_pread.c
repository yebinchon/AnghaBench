
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int lock; TYPE_1__* ops; } ;
typedef int off_t_ ;
typedef scalar_t__ int_t ;
typedef int fd_t ;
typedef scalar_t__ dword_t ;
typedef int addr_t ;
struct TYPE_2__ {scalar_t__ (* lseek ) (struct fd*,int ,int ) ;scalar_t__ (* read ) (struct fd*,char*,scalar_t__) ;} ;


 int LSEEK_SET ;
 int STRACE (char*,int ,int ,scalar_t__,int ) ;
 scalar_t__ _EBADF ;
 scalar_t__ _EFAULT ;
 scalar_t__ _ENOMEM ;
 struct fd* f_get (int ) ;
 int free (char*) ;
 int lock (int *) ;
 char* malloc (int ) ;
 scalar_t__ stub1 (struct fd*,int ,int ) ;
 scalar_t__ stub2 (struct fd*,char*,scalar_t__) ;
 int unlock (int *) ;
 scalar_t__ user_write (int ,char*,scalar_t__) ;

dword_t sys_pread(fd_t f, addr_t buf_addr, dword_t size, off_t_ off) {
    STRACE("pread(%d, 0x%x, %d, %d)", f, buf_addr, size, off);
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    char *buf = malloc(size+1);
    if (buf == ((void*)0))
        return _ENOMEM;
    lock(&fd->lock);
    int_t res = fd->ops->lseek(fd, off, LSEEK_SET);
    if (res < 0)
        goto out;
    res = fd->ops->read(fd, buf, size);
    if (res >= 0) {
        if (user_write(buf_addr, buf, res))
            res = _EFAULT;
    }
out:
    unlock(&fd->lock);
    free(buf);
    return res;
}
