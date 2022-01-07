
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_info {int umask; int lock; } ;
typedef int mode_t_ ;
typedef int dword_t ;
struct TYPE_2__ {struct fs_info* fs; } ;


 int STRACE (char*,int) ;
 TYPE_1__* current ;
 int lock (int *) ;
 int unlock (int *) ;

dword_t sys_umask(dword_t mask) {
    STRACE("umask(0%o)", mask);
    struct fs_info *fs = current->fs;
    lock(&fs->lock);
    mode_t_ old_umask = fs->umask;
    fs->umask = ((mode_t_) mask) & 0777;
    unlock(&fs->lock);
    return old_umask;
}
