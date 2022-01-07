
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t_ ;
typedef scalar_t__ uid_t ;
struct fd {TYPE_2__* mount; } ;
typedef int fd_t ;
typedef int dword_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int (* fsetattr ) (struct fd*,int ) ;} ;


 int _EBADF ;
 struct fd* f_get (int ) ;
 int gid ;
 int make_attr (int ,scalar_t__) ;
 int stub1 (struct fd*,int ) ;
 int stub2 (struct fd*,int ) ;
 int uid ;

dword_t sys_fchown32(fd_t f, uid_t_ owner, uid_t_ group) {
    struct fd *fd = f_get(f);
    if (fd == ((void*)0))
        return _EBADF;
    int err;
    if (owner != (uid_t) -1) {
        err = fd->mount->fs->fsetattr(fd, make_attr(uid, owner));
        if (err < 0)
            return err;
    }
    if (group != (uid_t) -1) {
        err = fd->mount->fs->fsetattr(fd, make_attr(gid, group));
        if (err < 0)
            return err;
    }
    return 0;
}
