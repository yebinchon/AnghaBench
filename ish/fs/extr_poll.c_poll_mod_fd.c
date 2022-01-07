
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union poll_fd_info {int dummy; } poll_fd_info ;
struct poll_fd {int types; union poll_fd_info info; } ;
struct poll {int lock; } ;
struct fd {int poll_lock; } ;


 int _ENOENT ;
 int lock (int *) ;
 struct poll_fd* poll_find_fd (struct poll*,struct fd*) ;
 int unlock (int *) ;

int poll_mod_fd(struct poll *poll, struct fd *fd, int types, union poll_fd_info info) {
    int err;
    lock(&fd->poll_lock);
    lock(&poll->lock);
    struct poll_fd *poll_fd = poll_find_fd(poll, fd);
    if (poll_fd == ((void*)0)) {
        err = _ENOENT;
        goto out;
    }

    poll_fd->types = types;
    poll_fd->info = info;

    err = 0;
out:
    unlock(&poll->lock);
    unlock(&fd->poll_lock);
    return err;
}
