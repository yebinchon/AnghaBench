
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fd {TYPE_2__* mount; } ;
typedef int off_t_ ;
typedef int fd_t ;
typedef int dword_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int (* fsetattr ) (struct fd*,int ) ;} ;


 int _EBADF ;
 struct fd* f_get (int ) ;
 int make_attr (int,int) ;
 int stub1 (struct fd*,int ) ;

dword_t sys_ftruncate64(fd_t f, dword_t size_low, dword_t size_high) {
    off_t_ size = ((off_t_) size_high << 32) | size_low;
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    return fd->mount->fs->fsetattr(fd, make_attr(size, size));
}
