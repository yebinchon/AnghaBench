
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int f_frsize; int f_namemax; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_bsize; } ;
struct statfsbuf {int frsize; int namelen; int ffree; int files; int bavail; int bfree; int blocks; int bsize; } ;
struct mount {int root_fd; } ;


 int fstatvfs (int ,struct statvfs*) ;

int realfs_statfs(struct mount *mount, struct statfsbuf *stat) {
    struct statvfs vfs = {};
    fstatvfs(mount->root_fd, &vfs);
    stat->bsize = vfs.f_bsize;
    stat->blocks = vfs.f_blocks;
    stat->bfree = vfs.f_bfree;
    stat->bavail = vfs.f_bavail;
    stat->files = vfs.f_files;
    stat->ffree = vfs.f_ffree;
    stat->namelen = vfs.f_namemax;
    stat->frsize = vfs.f_frsize;
    return 0;
}
