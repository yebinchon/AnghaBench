
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expirations; } ;
struct fd {int lock; int cond; TYPE_1__ timerfd; } ;


 int lock (int *) ;
 int notify (int *) ;
 int poll_wakeup (struct fd*) ;
 int unlock (int *) ;

__attribute__((used)) static void timerfd_callback(struct fd *fd) {
    lock(&fd->lock);
    fd->timerfd.expirations++;
    notify(&fd->cond);
    unlock(&fd->lock);
    poll_wakeup(fd);
}
