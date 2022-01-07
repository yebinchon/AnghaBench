
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_info {int lock; int umask; } ;
typedef int mode_t_ ;
struct TYPE_2__ {struct fs_info* fs; } ;


 TYPE_1__* current ;
 int lock (int *) ;
 int unlock (int *) ;

__attribute__((used)) static void apply_umask(mode_t_ *mode) {
    struct fs_info *fs = current->fs;
    lock(&fs->lock);
    *mode &= ~fs->umask;
    unlock(&fs->lock);
}
