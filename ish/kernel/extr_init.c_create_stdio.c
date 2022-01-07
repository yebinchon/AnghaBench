
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; int rdev; } ;
struct fd {scalar_t__ refcount; int flags; TYPE_1__ stat; } ;
struct TYPE_6__ {TYPE_2__* files; } ;
struct TYPE_5__ {void** files; } ;


 int DEV_CHAR ;
 scalar_t__ IS_ERR (struct fd*) ;
 int O_RDWR_ ;
 int S_IFCHR ;
 int S_IRUSR ;
 struct fd* adhoc_fd_create (int *) ;
 TYPE_3__* current ;
 int dev_make (int,int) ;
 int dev_open (int,int,int ,struct fd*) ;
 void* fd_retain (struct fd*) ;
 struct fd* generic_open (char const*,int ,int ) ;

int create_stdio(const char *file, int major, int minor) {
    struct fd *fd = generic_open(file, O_RDWR_, 0);
    if (IS_ERR(fd)) {

        fd = adhoc_fd_create(((void*)0));
        fd->stat.rdev = dev_make(major, minor);
        fd->stat.mode = S_IFCHR | S_IRUSR;
        fd->flags = O_RDWR_;
        int err = dev_open(major, minor, DEV_CHAR, fd);
        if (err < 0)
            return err;
    }

    fd->refcount = 0;
    current->files->files[0] = fd_retain(fd);
    current->files->files[1] = fd_retain(fd);
    current->files->files[2] = fd_retain(fd);
    return 0;
}
