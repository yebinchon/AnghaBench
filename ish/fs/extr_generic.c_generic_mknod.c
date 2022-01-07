
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {TYPE_1__* fs; } ;
typedef int mode_t_ ;
typedef int dev_t_ ;
struct TYPE_2__ {int (* mknod ) (struct mount*,char*,int ,int ) ;} ;


 int AT_PWD ;
 int MAX_PATH ;
 int N_PARENT_DIR_WRITE ;
 int N_SYMLINK_NOFOLLOW ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int _EINVAL ;
 int _EPERM ;
 struct mount* find_mount_and_trim_path (char*) ;
 int mount_release (struct mount*) ;
 int path_normalize (int ,char const*,char*,int) ;
 int stub1 (struct mount*,char*,int ,int ) ;
 int superuser () ;

int generic_mknod(const char *path_raw, mode_t_ mode, dev_t_ dev) {
    if (S_ISDIR(mode) || S_ISLNK(mode))
        return _EINVAL;
    if (!superuser() && (S_ISBLK(mode) || S_ISCHR(mode)))
        return _EPERM;

    char path[MAX_PATH];
    int err = path_normalize(AT_PWD, path_raw, path, N_SYMLINK_NOFOLLOW | N_PARENT_DIR_WRITE);
    if (err < 0)
        return err;
    struct mount *mount = find_mount_and_trim_path(path);
    if (mount->fs->mknod == ((void*)0))
        err = _EPERM;
    else
        err = mount->fs->mknod(mount, path, mode, dev);
    mount_release(mount);
    return err;
}
