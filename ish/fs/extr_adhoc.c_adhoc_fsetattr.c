
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int gid; int uid; } ;
struct fd {TYPE_1__ stat; } ;
struct attr {int type; int mode; int gid; int uid; } ;


 int S_IFMT ;
 int _EINVAL ;





__attribute__((used)) static int adhoc_fsetattr(struct fd *fd, struct attr attr) {
    switch (attr.type) {
        case 128:
            fd->stat.uid = attr.uid;
            break;
        case 131:
            fd->stat.gid = attr.gid;
            break;
        case 130:
            fd->stat.mode = (fd->stat.mode & S_IFMT) | (attr.mode & ~S_IFMT);
            break;
        case 129:
            return _EINVAL;
    }
    return 0;
}
