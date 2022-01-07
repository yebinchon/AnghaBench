
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_info {int lock; struct fd* pwd; } ;
struct fd {int dummy; } ;


 int fd_close (struct fd*) ;
 int lock (int *) ;
 int unlock (int *) ;

void fs_chdir(struct fs_info *fs, struct fd *fd) {
    lock(&fs->lock);
    fd_close(fs->pwd);
    fs->pwd = fd;
    unlock(&fs->lock);
}
