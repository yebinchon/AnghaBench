
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dir; } ;


 int realfs_opendir (struct fd*) ;
 unsigned long telldir (int ) ;

unsigned long realfs_telldir(struct fd *fd) {
    realfs_opendir(fd);
    return telldir(fd->dir);
}
