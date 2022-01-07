
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct mount {int root_fd; } ;


 int errno_map () ;
 int fix_path (char const*) ;
 int utimensat (int ,int ,struct timespec*,int ) ;

int realfs_utime(struct mount *mount, const char *path, struct timespec atime, struct timespec mtime) {
    struct timespec times[2] = {atime, mtime};
    int err = utimensat(mount->root_fd, fix_path(path), times, 0);
    if (err < 0)
        return errno_map();
    return 0;
}
