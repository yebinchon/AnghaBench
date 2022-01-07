
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct mount {TYPE_1__* fs; } ;
struct fd {int dummy; } ;
struct TYPE_2__ {int (* utime ) (struct mount*,char*,struct timespec,struct timespec) ;} ;


 int MAX_PATH ;
 int N_SYMLINK_FOLLOW ;
 int N_SYMLINK_NOFOLLOW ;
 struct mount* find_mount_and_trim_path (char*) ;
 int mount_release (struct mount*) ;
 int path_normalize (struct fd*,char const*,char*,int ) ;
 int stub1 (struct mount*,char*,struct timespec,struct timespec) ;

int generic_utime(struct fd *at, const char *path_raw, struct timespec atime, struct timespec mtime, bool follow_links) {
    char path[MAX_PATH];
    int err = path_normalize(at, path_raw, path, follow_links ? N_SYMLINK_FOLLOW : N_SYMLINK_NOFOLLOW);
    if (err < 0)
        return err;
    struct mount *mount = find_mount_and_trim_path(path);
    err = mount->fs->utime(mount, path, atime, mtime);
    mount_release(mount);
    return err;
}
