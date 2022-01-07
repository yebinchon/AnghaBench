
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct statbuf {int inode; int mode; } ;
struct mount {TYPE_1__* fs; } ;
struct inode_data {scalar_t__ socket_id; int lock; } ;
struct fs_info {int umask; int lock; } ;
struct TYPE_5__ {struct inode_data* unix_name_inode; } ;
struct fd {TYPE_2__ socket; } ;
typedef int mode_t_ ;
struct TYPE_6__ {struct fs_info* fs; } ;
struct TYPE_4__ {int (* stat ) (struct mount*,char*,struct statbuf*,int) ;int (* mknod ) (struct mount*,char*,int,int ) ;} ;


 int AT_PWD ;
 int MAX_PATH ;
 int N_SYMLINK_FOLLOW ;
 int S_IFSOCK ;
 int S_ISSOCK (int ) ;
 int _EADDRINUSE ;
 int _ENOTSOCK ;
 TYPE_3__* current ;
 struct mount* find_mount_and_trim_path (char*) ;
 struct inode_data* inode_get (struct mount*,int ) ;
 int inode_release (struct inode_data*) ;
 int lock (int *) ;
 int mount_release (struct mount*) ;
 int path_normalize (int ,char const*,char*,int ) ;
 int stub1 (struct mount*,char*,struct statbuf*,int) ;
 int stub2 (struct mount*,char*,int,int ) ;
 int stub3 (struct mount*,char*,struct statbuf*,int) ;
 scalar_t__ unix_socket_next_id () ;
 int unlock (int *) ;

__attribute__((used)) static int unix_socket_get(const char *path_raw, struct fd *bind_fd, uint32_t *socket_id) {
    char path[MAX_PATH];
    int err = path_normalize(AT_PWD, path_raw, path, N_SYMLINK_FOLLOW);
    if (err < 0)
        return err;
    struct mount *mount = find_mount_and_trim_path(path);
    struct statbuf stat;
    err = mount->fs->stat(mount, path, &stat, 1);


    if (bind_fd != ((void*)0)) {

        if (err == 0) {
            err = _EADDRINUSE;
            goto out;
        }

        if (err < 0) {
            mode_t_ mode = 0777;
            struct fs_info *fs = current->fs;
            lock(&fs->lock);
            mode &= ~fs->umask;
            unlock(&fs->lock);
            err = mount->fs->mknod(mount, path, S_IFSOCK | mode, 0);
            if (err < 0)
                goto out;
            err = mount->fs->stat(mount, path, &stat, 1);
            if (err < 0)
                goto out;
        }
    }



    if (bind_fd == ((void*)0) && err < 0)
        goto out;

    if (!S_ISSOCK(stat.mode)) {
        err = _ENOTSOCK;
        goto out;
    }


    struct inode_data *inode = inode_get(mount, stat.inode);
    lock(&inode->lock);
    if (inode->socket_id == 0)
        inode->socket_id = unix_socket_next_id();
    unlock(&inode->lock);
    *socket_id = inode->socket_id;

    mount_release(mount);
    if (bind_fd != ((void*)0))
        bind_fd->socket.unix_name_inode = inode;
    else
        inode_release(inode);
    return 0;

out:
    mount_release(mount);
    return err;
}
