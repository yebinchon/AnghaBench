
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;
struct attr {int type; int size; int mode; int gid; int uid; } ;






 int errno_map () ;
 int fchmod (int,int ) ;
 int fchown (int,int ,int) ;
 int ftruncate (int,int ) ;

__attribute__((used)) static int realfs_fsetattr(struct fd *fd, struct attr attr) {
    int real_fd = fd->real_fd;
    int err;
    switch (attr.type) {
        case 128:
            err = fchown(real_fd, attr.uid, -1);
            break;
        case 131:
            err = fchown(real_fd, attr.gid, -1);
            break;
        case 130:
            err = fchmod(real_fd, attr.mode);
            break;
        case 129:
            err = ftruncate(real_fd, attr.size);
            break;
    }
    if (err < 0)
        return errno_map();
    return err;
}
