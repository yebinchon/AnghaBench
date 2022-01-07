
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ val; } ;
struct fd {int lock; TYPE_1__ eventfd; } ;


 int POLL_READ ;
 int POLL_WRITE ;
 int UINT64_MAX ;
 int lock (int *) ;
 int unlock (int *) ;

__attribute__((used)) static int eventfd_poll(struct fd *fd) {
    lock(&fd->lock);
    int types = 0;
    if (fd->eventfd.val > 0)
        types |= POLL_READ;
    if (fd->eventfd.val < UINT64_MAX - 1)
        types |= POLL_WRITE;
    unlock(&fd->lock);
    return types;
}
