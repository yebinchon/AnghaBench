
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_info {scalar_t__ refcount; int root; int pwd; } ;


 int fd_close (int ) ;
 int free (struct fs_info*) ;

void fs_info_release(struct fs_info *fs) {
    if (--fs->refcount == 0) {
        fd_close(fs->pwd);
        fd_close(fs->root);
        free(fs);
    }
}
