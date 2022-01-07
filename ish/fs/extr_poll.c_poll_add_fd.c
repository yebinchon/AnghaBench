
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union poll_fd_info {int dummy; } poll_fd_info ;
struct poll_fd {int types; int fds; int polls; union poll_fd_info info; struct poll* poll; struct fd* fd; } ;
struct poll {int lock; int poll_fds; } ;
struct fd {int poll_lock; int poll_fds; } ;


 int _ENOMEM ;
 int list_add (int *,int *) ;
 int lock (int *) ;
 struct poll_fd* malloc (int) ;
 int unlock (int *) ;

int poll_add_fd(struct poll *poll, struct fd *fd, int types, union poll_fd_info info) {
    int err;
    lock(&fd->poll_lock);
    lock(&poll->lock);

    struct poll_fd *poll_fd = malloc(sizeof(struct poll_fd));
    if (poll_fd == ((void*)0)) {
        err = _ENOMEM;
        goto out;
    }
    poll_fd->fd = fd;
    poll_fd->poll = poll;
    poll_fd->types = types;
    poll_fd->info = info;

    list_add(&fd->poll_fds, &poll_fd->polls);
    list_add(&poll->poll_fds, &poll_fd->fds);

    err = 0;
out:
    unlock(&poll->lock);
    unlock(&fd->poll_lock);
    return err;
}
