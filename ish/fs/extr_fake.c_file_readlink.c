
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;
typedef int ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int errno_map () ;
 int fix_path (char const*) ;
 int openat (int ,int ,int ) ;
 int read (int,char*,size_t) ;

__attribute__((used)) static ssize_t file_readlink(struct mount *mount, const char *path, char *buf, size_t bufsize) {

    int fd = openat(mount->root_fd, fix_path(path), O_RDONLY);
    if (fd < 0)
        return errno_map();
    int err = read(fd, buf, bufsize);
    close(fd);
    if (err < 0)
        return errno_map();
    return err;
}
