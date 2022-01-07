
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;


 int errno_map () ;
 int fix_path (char const*) ;
 int renameat (int ,int ,int ,int ) ;

__attribute__((used)) static int realfs_rename(struct mount *mount, const char *src, const char *dst) {
    int err = renameat(mount->root_fd, fix_path(src), mount->root_fd, fix_path(dst));
    if (err < 0)
        return errno_map();
    return err;
}
