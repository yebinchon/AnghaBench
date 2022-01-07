
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int root_fd; } ;
struct ish_stat {int mode; scalar_t__ rdev; int gid; int uid; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int egid; int euid; } ;


 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int S_IFLNK ;
 int close (int) ;
 TYPE_1__* current ;
 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int db_rollback (struct mount*) ;
 int errno ;
 int errno_map () ;
 int fix_path (char const*) ;
 int openat (int ,int ,int,int) ;
 int path_create (struct mount*,char const*,struct ish_stat*) ;
 int strlen (char const*) ;
 int unlinkat (int ,int ,int ) ;
 scalar_t__ write (int,char const*,int ) ;

__attribute__((used)) static int fakefs_symlink(struct mount *mount, const char *target, const char *link) {
    db_begin(mount);

    int fd = openat(mount->root_fd, fix_path(link), O_WRONLY | O_CREAT | O_EXCL, 0666);
    if (fd < 0) {
        db_rollback(mount);
        return errno_map();
    }
    ssize_t res = write(fd, target, strlen(target));
    close(fd);
    if (res < 0) {
        int saved_errno = errno;
        unlinkat(mount->root_fd, fix_path(link), 0);
        db_rollback(mount);
        errno = saved_errno;
        return errno_map();
    }


    struct ish_stat ishstat;
    ishstat.mode = S_IFLNK | 0777;
    ishstat.uid = current->euid;
    ishstat.gid = current->egid;
    ishstat.rdev = 0;
    path_create(mount, link, &ishstat);
    db_commit(mount);
    return 0;
}
