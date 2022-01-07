
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;
typedef int off_t_ ;


 int O_RDWR ;
 int close (int) ;
 int errno_map () ;
 int fix_path (char const*) ;
 scalar_t__ ftruncate (int,int ) ;
 int openat (int ,int ,int ) ;

int realfs_truncate(struct mount *mount, const char *path, off_t_ size) {
    int fd = openat(mount->root_fd, fix_path(path), O_RDWR);
    if (fd < 0)
        return errno_map();
    int err = 0;
    if (ftruncate(fd, size) < 0)
        err = errno_map();
    close(fd);
    return err;
}
