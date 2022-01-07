
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ val; } ;
struct fd {int flags; int lock; int cond; TYPE_1__ eventfd; } ;
typedef int ssize_t ;


 int O_NONBLOCK_ ;
 int _EAGAIN ;
 int _EINVAL ;
 int lock (int *) ;
 int notify (int *) ;
 int poll_wakeup (struct fd*) ;
 int unlock (int *) ;
 int wait_for (int *,int *,int *) ;

__attribute__((used)) static ssize_t eventfd_read(struct fd *fd, void *buf, size_t bufsize) {
    if (bufsize < sizeof(uint64_t))
        return _EINVAL;

    lock(&fd->lock);
    while (fd->eventfd.val == 0) {
        if (fd->flags & O_NONBLOCK_) {
            unlock(&fd->lock);
            return _EAGAIN;
        }
        wait_for(&fd->cond, &fd->lock, ((void*)0));
    }

    *(uint64_t *) buf = fd->eventfd.val;
    fd->eventfd.val = 0;
    notify(&fd->cond);
    unlock(&fd->lock);
    poll_wakeup(fd);
    return sizeof(uint64_t);
}
