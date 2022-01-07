
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;
struct fd {int real_fd; int * dir; } ;


 struct fd* ERR_PTR (int ) ;
 int errno_map () ;
 struct fd* fd_create (int *) ;
 int fix_path (char const*) ;
 int open_flags_real_from_fake (int) ;
 int openat (int ,int ,int,int) ;
 int realfs_fdops ;

__attribute__((used)) static struct fd *realfs_open(struct mount *mount, const char *path, int flags, int mode) {
    int real_flags = open_flags_real_from_fake(flags);
    int fd_no = openat(mount->root_fd, fix_path(path), real_flags, mode);
    if (fd_no < 0)
        return ERR_PTR(errno_map());
    struct fd *fd = fd_create(&realfs_fdops);
    fd->real_fd = fd_no;
    fd->dir = ((void*)0);
    return fd;
}
