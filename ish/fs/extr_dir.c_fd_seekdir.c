
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {unsigned long offset; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* seekdir ) (struct fd*,unsigned long) ;} ;


 int stub1 (struct fd*,unsigned long) ;

__attribute__((used)) static void fd_seekdir(struct fd *fd, unsigned long off) {
    fd->offset = off;
    if (fd->ops->seekdir)
        fd->ops->seekdir(fd, off);
}
