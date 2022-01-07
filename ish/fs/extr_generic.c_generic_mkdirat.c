
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {TYPE_1__* fs; } ;
struct fd {int dummy; } ;
typedef int mode_t_ ;
struct TYPE_2__ {int (* mkdir ) (struct mount*,char*,int ) ;} ;


 int MAX_PATH ;
 int N_PARENT_DIR_WRITE ;
 int N_SYMLINK_FOLLOW ;
 struct mount* find_mount_and_trim_path (char*) ;
 int mount_release (struct mount*) ;
 int path_normalize (struct fd*,char const*,char*,int) ;
 int stub1 (struct mount*,char*,int ) ;

int generic_mkdirat(struct fd *at, const char *path_raw, mode_t_ mode) {
    char path[MAX_PATH];
    int err = path_normalize(at, path_raw, path, N_SYMLINK_FOLLOW | N_PARENT_DIR_WRITE);
    if (err < 0)
        return err;
    struct mount *mount = find_mount_and_trim_path(path);
    err = mount->fs->mkdir(mount, path, mode);
    mount_release(mount);
    return err;
}
