
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll {int* notify_pipe; int lock; int poll_fds; scalar_t__ waiters; } ;


 int list_init (int *) ;
 int lock_init (int *) ;
 struct poll* malloc (int) ;

struct poll *poll_create() {
    struct poll *poll = malloc(sizeof(struct poll));
    if (poll == ((void*)0))
        return ((void*)0);
    poll->waiters = 0;
    poll->notify_pipe[0] = -1;
    poll->notify_pipe[1] = -1;
    list_init(&poll->poll_fds);
    lock_init(&poll->lock);
    return poll;
}
