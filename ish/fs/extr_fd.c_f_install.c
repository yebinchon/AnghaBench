
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fd {int dummy; } ;
typedef scalar_t__ fd_t ;
struct TYPE_4__ {TYPE_1__* files; } ;
struct TYPE_3__ {int lock; int cloexec; } ;


 int O_CLOEXEC_ ;
 int O_NONBLOCK_ ;
 int bit_set (scalar_t__,int ) ;
 TYPE_2__* current ;
 scalar_t__ f_install_start (struct fd*,int ) ;
 int fd_setflags (struct fd*,int) ;
 int lock (int *) ;
 int unlock (int *) ;

fd_t f_install(struct fd *fd, int flags) {
    lock(&current->files->lock);
    fd_t f = f_install_start(fd, 0);
    if (f >= 0) {
        if (flags & O_CLOEXEC_)
            bit_set(f, current->files->cloexec);
        if (flags & O_NONBLOCK_)
            fd_setflags(fd, O_NONBLOCK_);
    }
    unlock(&current->files->lock);
    return f;
}
