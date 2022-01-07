
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ errno_map () ;
 int fix_path (char const*) ;
 scalar_t__ readlinkat (int ,int ,char*,size_t) ;

__attribute__((used)) static ssize_t realfs_readlink(struct mount *mount, const char *path, char *buf, size_t bufsize) {
    ssize_t size = readlinkat(mount->root_fd, fix_path(path), buf, bufsize);
    if (size < 0)
        return errno_map();
    return size;
}
