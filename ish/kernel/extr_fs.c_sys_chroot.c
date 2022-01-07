
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fd {int dummy; } ;
typedef int path ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int lock; struct fd* root; } ;


 scalar_t__ IS_ERR (struct fd*) ;
 int MAX_PATH ;
 int PTR_ERR (struct fd*) ;
 int STRACE (char*,char*) ;
 int _EFAULT ;
 TYPE_2__* current ;
 int fd_close (struct fd*) ;
 int lock (int *) ;
 struct fd* open_dir (char*) ;
 int unlock (int *) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_chroot(addr_t path_addr) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("chroot(\"%s\")", path);

    struct fd *dir = open_dir(path);
    if (IS_ERR(dir))
        return PTR_ERR(dir);
    lock(&current->fs->lock);
    fd_close(current->fs->root);
    current->fs->root = dir;
    unlock(&current->fs->lock);
    return 0;
}
