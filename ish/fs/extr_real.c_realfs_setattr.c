
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;
struct attr {int type; int size; int mode; int gid; int uid; } ;


 int TODO (char*) ;




 int errno_map () ;
 int fchmodat (int,char const*,int ,int ) ;
 int fchownat (int,char const*,int ,int,int ) ;
 char* fix_path (char const*) ;
 int realfs_truncate (struct mount*,char const*,int ) ;

__attribute__((used)) static int realfs_setattr(struct mount *mount, const char *path, struct attr attr) {
    path = fix_path(path);
    int root = mount->root_fd;
    int err;
    switch (attr.type) {
        case 128:
            err = fchownat(root, path, attr.uid, -1, 0);
            break;
        case 131:
            err = fchownat(root, path, attr.gid, -1, 0);
            break;
        case 130:
            err = fchmodat(root, path, attr.mode, 0);
            break;
        case 129:
            return realfs_truncate(mount, path, attr.size);
        default:
            TODO("other attrs");
    }
    if (err < 0)
        return errno_map();
    return err;
}
