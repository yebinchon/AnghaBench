
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dir; } ;


 int realfs_opendir (struct fd*) ;
 int seekdir (int ,unsigned long) ;

void realfs_seekdir(struct fd *fd, unsigned long ptr) {
    realfs_opendir(fd);
    seekdir(fd->dir, ptr);
}
