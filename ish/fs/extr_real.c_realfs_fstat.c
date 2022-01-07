
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statbuf {int dummy; } ;
struct stat {int dummy; } ;
struct fd {int real_fd; } ;


 int copy_stat (struct statbuf*,struct stat*) ;
 int errno_map () ;
 scalar_t__ fstat (int ,struct stat*) ;

__attribute__((used)) static int realfs_fstat(struct fd *fd, struct statbuf *fake_stat) {
    struct stat real_stat;
    if (fstat(fd->real_fd, &real_stat) < 0)
        return errno_map();
    copy_stat(fake_stat, &real_stat);
    return 0;
}
