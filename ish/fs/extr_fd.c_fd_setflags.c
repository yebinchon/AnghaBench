
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* setflags ) (struct fd*,int) ;} ;


 int FD_ALLOWED_FLAGS ;
 int stub1 (struct fd*,int) ;

int fd_setflags(struct fd *fd, int flags) {
    if (fd->ops->setflags)
        return fd->ops->setflags(fd, flags);
    fd->flags = (fd->flags & ~FD_ALLOWED_FLAGS) | (flags & FD_ALLOWED_FLAGS);
    return 0;
}
