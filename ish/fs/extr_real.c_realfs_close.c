
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; int * dir; } ;


 int close (int ) ;
 int closedir (int *) ;
 int errno_map () ;

int realfs_close(struct fd *fd) {
    if (fd->dir != ((void*)0))
        closedir(fd->dir);
    int err = close(fd->real_fd);
    if (err < 0)
        return errno_map();
    return 0;
}
