
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_data {int lock; int posix_unlock; } ;
struct flock_ {scalar_t__ type; } ;
struct file_lock {int dummy; } ;
struct fd {struct inode_data* inode; } ;


 scalar_t__ F_RDLCK_ ;
 scalar_t__ F_UNLCK_ ;
 scalar_t__ F_WRLCK_ ;
 int O_RDONLY_ ;
 int O_RDWR_ ;
 int O_WRONLY_ ;
 int _EAGAIN ;
 int _EBADF ;
 int _EINVAL ;
 int fd_getflags (struct fd*) ;
 int file_lock_acquire (struct inode_data*,struct file_lock*) ;
 int file_lock_from_flock (struct fd*,struct flock_*,struct file_lock*) ;
 int lock (int *) ;
 int unlock (int *) ;
 int wait_for (int *,int *,int *) ;

int fcntl_setlk(struct fd *fd, struct flock_ *flock, bool blocking) {
    if (flock->type != F_RDLCK_ && flock->type != F_WRLCK_ && flock->type != F_UNLCK_)
        return _EINVAL;
    if (flock->type == F_RDLCK_ && !(fd_getflags(fd) & (O_RDONLY_|O_RDWR_)))
        return _EBADF;
    if (flock->type == F_WRLCK_ && !(fd_getflags(fd) & (O_WRONLY_|O_RDWR_)))
        return _EBADF;

    struct inode_data *inode = fd->inode;
    lock(&inode->lock);

    struct file_lock request;
    int err = file_lock_from_flock(fd, flock, &request);
    if (err < 0)
        goto out;
    while ((err = file_lock_acquire(inode, &request)) == _EAGAIN) {
        if (!blocking)
            break;
        err = wait_for(&inode->posix_unlock, &inode->lock, ((void*)0));
        if (err < 0)
            break;
    }
out:
    unlock(&inode->lock);
    return err;
}
