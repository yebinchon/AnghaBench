
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statbuf {int rdev; int gid; int uid; int mode; int inode; } ;
struct mount {int dummy; } ;
struct ish_stat {int rdev; int gid; int uid; int mode; } ;
typedef int ino_t ;
struct TYPE_2__ {int (* stat ) (struct mount*,char const*,struct statbuf*,int) ;} ;


 int _ENOENT ;
 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int db_rollback (struct mount*) ;
 int path_read_stat (struct mount*,char const*,struct ish_stat*,int *) ;
 TYPE_1__ realfs ;
 int stub1 (struct mount*,char const*,struct statbuf*,int) ;

__attribute__((used)) static int fakefs_stat(struct mount *mount, const char *path, struct statbuf *fake_stat, bool follow_links) {
    db_begin(mount);
    struct ish_stat ishstat;
    ino_t inode;
    if (!path_read_stat(mount, path, &ishstat, &inode)) {
        db_rollback(mount);
        return _ENOENT;
    }
    int err = realfs.stat(mount, path, fake_stat, follow_links);
    db_commit(mount);
    if (err < 0)
        return err;
    fake_stat->inode = inode;
    fake_stat->mode = ishstat.mode;
    fake_stat->uid = ishstat.uid;
    fake_stat->gid = ishstat.gid;
    fake_stat->rdev = ishstat.rdev;
    return 0;
}
