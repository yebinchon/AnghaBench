
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fd {TYPE_2__* mount; } ;
typedef int fd_t ;
typedef int dword_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int (* flock ) (struct fd*,int ) ;} ;


 int _EBADF ;
 struct fd* f_get (int ) ;
 int stub1 (struct fd*,int ) ;

dword_t sys_flock(fd_t f, dword_t operation) {
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    return fd->mount->fs->flock(fd, operation);
}
