
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statbuf {int dummy; } ;
struct mount {TYPE_1__* fs; } ;
struct fd {int dummy; } ;
struct TYPE_2__ {int (* stat ) (struct mount*,char*,struct statbuf*,int) ;} ;


 int MAX_PATH ;
 int N_SYMLINK_FOLLOW ;
 int access_check (struct statbuf*,int) ;
 struct mount* find_mount_and_trim_path (char*) ;
 int mount_release (struct mount*) ;
 int path_normalize (struct fd*,char const*,char*,int ) ;
 int stub1 (struct mount*,char*,struct statbuf*,int) ;

int generic_accessat(struct fd *dirfd, const char *path_raw, int mode) {
    char path[MAX_PATH];
    int err = path_normalize(dirfd, path_raw, path, N_SYMLINK_FOLLOW);
    if (err < 0)
        return err;

    struct mount *mount = find_mount_and_trim_path(path);
    struct statbuf stat = {};
    err = mount->fs->stat(mount, path, &stat, 1);
    mount_release(mount);
    if (err < 0)
        return err;
    return access_check(&stat, mode);
}
