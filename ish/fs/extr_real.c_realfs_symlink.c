
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int root_fd; } ;


 int errno_map () ;
 int symlinkat (char const*,int ,char const*) ;

__attribute__((used)) static int realfs_symlink(struct mount *mount, const char *target, const char *link) {
    int err = symlinkat(target, mount->root_fd, link);
    if (err < 0)
        return errno_map();
    return err;
}
