
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; int * dir; } ;


 struct fd* adhoc_fd_create (int *) ;
 int realfs_fdops ;

__attribute__((used)) static struct fd *open_fd_from_actual_fd(int fd_no) {
    struct fd *fd = adhoc_fd_create(&realfs_fdops);
    if (fd == ((void*)0)) {
        return ((void*)0);
    }
    fd->real_fd = fd_no;
    fd->dir = ((void*)0);
    return fd;
}
