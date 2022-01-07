
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statbuf {int dummy; } ;
struct stat {int dummy; } ;
struct mount {int root_fd; } ;


 int AT_SYMLINK_NOFOLLOW ;
 int copy_stat (struct statbuf*,struct stat*) ;
 int errno_map () ;
 int fix_path (char const*) ;
 scalar_t__ fstatat (int ,int ,struct stat*,int ) ;

__attribute__((used)) static int realfs_stat(struct mount *mount, const char *path, struct statbuf *fake_stat, bool follow_links) {
    struct stat real_stat;
    if (fstatat(mount->root_fd, fix_path(path), &real_stat, follow_links ? 0 : AT_SYMLINK_NOFOLLOW) < 0)
        return errno_map();
    copy_stat(fake_stat, &real_stat);
    return 0;
}
