
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_info {void* root; void* pwd; int umask; } ;


 void* fd_retain (void*) ;
 struct fs_info* fs_info_new () ;

struct fs_info *fs_info_copy(struct fs_info *fs) {
    struct fs_info *new_fs = fs_info_new();
    new_fs->umask = fs->umask;
    new_fs->pwd = fd_retain(fs->pwd);
    new_fs->root = fd_retain(fs->root);
    return new_fs;
}
