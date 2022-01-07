
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;
typedef int fd_t ;


 int _ENOMEM ;
 struct fd* adhoc_fd_create (int *) ;
 int f_install (struct fd*,int) ;
 int realfs_fdops ;

__attribute__((used)) static fd_t pipe_f_create(int pipe_fd, int flags) {
    struct fd *fd = adhoc_fd_create(&realfs_fdops);
    if (fd == ((void*)0))
        return _ENOMEM;
    fd->real_fd = pipe_fd;
    return f_install(fd, flags);
}
