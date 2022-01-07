
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statbuf {int rdev; int gid; int uid; int mode; int inode; } ;
struct ish_stat {int rdev; int gid; int uid; int mode; } ;
struct fd {int fake_inode; int mount; } ;
struct TYPE_2__ {int (* fstat ) (struct fd*,struct statbuf*) ;} ;


 int db_begin (int ) ;
 int db_commit (int ) ;
 int inode_read_stat (int ,int ,struct ish_stat*) ;
 TYPE_1__ realfs ;
 int stub1 (struct fd*,struct statbuf*) ;

__attribute__((used)) static int fakefs_fstat(struct fd *fd, struct statbuf *fake_stat) {
    int err = realfs.fstat(fd, fake_stat);
    if (err < 0)
        return err;
    db_begin(fd->mount);
    struct ish_stat ishstat;
    inode_read_stat(fd->mount, fd->fake_inode, &ishstat);
    db_commit(fd->mount);
    fake_stat->inode = fd->fake_inode;
    fake_stat->mode = ishstat.mode;
    fake_stat->uid = ishstat.uid;
    fake_stat->gid = ishstat.gid;
    fake_stat->rdev = ishstat.rdev;
    return 0;
}
