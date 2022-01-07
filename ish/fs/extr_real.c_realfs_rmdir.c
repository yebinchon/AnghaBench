
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;


 int AT_REMOVEDIR ;
 int errno_map () ;
 int fix_path (char const*) ;
 int unlinkat (int ,int ,int ) ;

__attribute__((used)) static int realfs_rmdir(struct mount *mount, const char *path) {
    int err = unlinkat(mount->root_fd, fix_path(path), AT_REMOVEDIR);
    if (err < 0)
        return errno_map();
    return 0;
}
