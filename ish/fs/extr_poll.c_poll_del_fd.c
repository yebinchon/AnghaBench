
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_fd {int fds; int polls; } ;
struct poll {int lock; } ;
struct fd {int poll_lock; } ;


 int _ENOENT ;
 int free (struct poll_fd*) ;
 int list_remove (int *) ;
 int lock (int *) ;
 struct poll_fd* poll_find_fd (struct poll*,struct fd*) ;
 int unlock (int *) ;

int poll_del_fd(struct poll *poll, struct fd *fd) {
    int err;
    lock(&fd->poll_lock);
    lock(&poll->lock);
    struct poll_fd *poll_fd = poll_find_fd(poll, fd);
    if (poll_fd == ((void*)0)) {
        err = _ENOENT;
        goto out;
    }

    list_remove(&poll_fd->polls);
    list_remove(&poll_fd->fds);
    free(poll_fd);

    err = 0;
out:
    unlock(&poll->lock);
    unlock(&fd->poll_lock);
    return err;
}
