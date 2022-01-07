
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_info {int refcount; int lock; int * root; int pwd; scalar_t__ umask; } ;


 int lock_init (int *) ;
 struct fs_info* malloc (int) ;

struct fs_info *fs_info_new() {
    struct fs_info *fs = malloc(sizeof(struct fs_info));
    if (fs == ((void*)0))
        return ((void*)0);
    fs->refcount = 1;
    fs->umask = 0;
    fs->pwd = fs->root = ((void*)0);
    lock_init(&fs->lock);
    return fs;
}
