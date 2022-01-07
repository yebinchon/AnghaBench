
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;


 int errno_map () ;
 int fix_path (char const*) ;
 int unlinkat (int ,int ,int ) ;

__attribute__((used)) static int realfs_unlink(struct mount *mount, const char *path) {
    int res = unlinkat(mount->root_fd, fix_path(path), 0);
    if (res < 0)
        return errno_map();
    return res;
}
