
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* getflags ) (struct fd*) ;} ;


 int stub1 (struct fd*) ;

int fd_getflags(struct fd *fd) {
    if (fd->ops->getflags)
        return fd->ops->getflags(fd);
    return fd->flags;
}
