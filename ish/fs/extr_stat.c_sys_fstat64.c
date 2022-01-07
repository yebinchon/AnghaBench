
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct statbuf {int dummy; } ;
struct newstat64 {int dummy; } ;
struct fd {TYPE_2__* mount; } ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int (* fstat ) (struct fd*,struct statbuf*) ;} ;


 int STRACE (char*,int ,int ) ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* f_get (int ) ;
 struct newstat64 stat_convert_newstat64 (struct statbuf) ;
 int stub1 (struct fd*,struct statbuf*) ;
 scalar_t__ user_put (int ,struct newstat64) ;

dword_t sys_fstat64(fd_t fd_no, addr_t statbuf_addr) {
    STRACE("fstat64(%d, 0x%x)", fd_no, statbuf_addr);
    struct fd *fd = f_get(fd_no);
    if (fd == ((void*)0))
        return _EBADF;
    struct statbuf stat = {};
    int err = fd->mount->fs->fstat(fd, &stat);
    if (err < 0)
        return err;
    struct newstat64 newstat = stat_convert_newstat64(stat);
    if (user_put(statbuf_addr, newstat))
        return _EFAULT;
    return 0;
}
