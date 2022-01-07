
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mount {int dummy; } ;
struct ish_stat {int mode; scalar_t__ rdev; int gid; int uid; } ;
struct fd {scalar_t__ fake_inode; int * ops; } ;
struct TYPE_4__ {int egid; int euid; } ;
struct TYPE_3__ {struct fd* (* open ) (struct mount*,char const*,int,int) ;} ;


 struct fd* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct fd*) ;
 int O_CREAT_ ;
 int S_IFREG ;
 int _ENOENT ;
 TYPE_2__* current ;
 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int fakefs_fdops ;
 int fd_close (struct fd*) ;
 int path_create (struct mount*,char const*,struct ish_stat*) ;
 void* path_get_inode (struct mount*,char const*) ;
 TYPE_1__ realfs ;
 struct fd* stub1 (struct mount*,char const*,int,int) ;

__attribute__((used)) static struct fd *fakefs_open(struct mount *mount, const char *path, int flags, int mode) {
    struct fd *fd = realfs.open(mount, path, flags, 0666);
    if (IS_ERR(fd))
        return fd;
    db_begin(mount);
    fd->fake_inode = path_get_inode(mount, path);
    if (flags & O_CREAT_) {
        struct ish_stat ishstat;
        ishstat.mode = mode | S_IFREG;
        ishstat.uid = current->euid;
        ishstat.gid = current->egid;
        ishstat.rdev = 0;
        if (fd->fake_inode == 0) {
            path_create(mount, path, &ishstat);
            fd->fake_inode = path_get_inode(mount, path);
        }
    }
    db_commit(mount);
    if (fd->fake_inode == 0) {


        fd_close(fd);
        return ERR_PTR(_ENOENT);
    }
    fd->ops = &fakefs_fdops;
    return fd;
}
