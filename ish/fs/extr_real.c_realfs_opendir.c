
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int * dir; int real_fd; } ;


 int assert (int ) ;
 int dup (int ) ;
 int * fdopendir (int) ;

__attribute__((used)) static void realfs_opendir(struct fd *fd) {
    if (fd->dir == ((void*)0)) {
        int dirfd = dup(fd->real_fd);
        fd->dir = fdopendir(dirfd);

        assert(fd->dir != ((void*)0));
    }
}
