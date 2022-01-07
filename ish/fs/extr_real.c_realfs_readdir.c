
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dir; } ;
struct dirent {int d_name; int d_ino; } ;
struct dir_entry {int name; int inode; } ;


 scalar_t__ errno ;
 int errno_map () ;
 struct dirent* readdir (int ) ;
 int realfs_opendir (struct fd*) ;
 int strcpy (int ,int ) ;

int realfs_readdir(struct fd *fd, struct dir_entry *entry) {
    realfs_opendir(fd);
    errno = 0;
    struct dirent *dirent = readdir(fd->dir);
    if (dirent == ((void*)0)) {
        if (errno != 0)
            return errno_map();
        else
            return 0;
    }
    entry->inode = dirent->d_ino;
    strcpy(entry->name, dirent->d_name);
    return 1;
}
