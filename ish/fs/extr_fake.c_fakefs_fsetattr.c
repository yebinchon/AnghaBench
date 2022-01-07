
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ish_stat {int dummy; } ;
struct fd {int mount; int fake_inode; } ;
struct attr {scalar_t__ type; } ;
struct TYPE_2__ {int (* fsetattr ) (struct fd*,struct attr) ;} ;


 scalar_t__ attr_size ;
 int db_begin (int ) ;
 int db_commit (int ) ;
 int fake_stat_setattr (struct ish_stat*,struct attr) ;
 int inode_read_stat (int ,int ,struct ish_stat*) ;
 int inode_write_stat (int ,int ,struct ish_stat*) ;
 TYPE_1__ realfs ;
 int stub1 (struct fd*,struct attr) ;

__attribute__((used)) static int fakefs_fsetattr(struct fd *fd, struct attr attr) {
    if (attr.type == attr_size)
        return realfs.fsetattr(fd, attr);
    db_begin(fd->mount);
    struct ish_stat ishstat;
    inode_read_stat(fd->mount, fd->fake_inode, &ishstat);
    fake_stat_setattr(&ishstat, attr);
    inode_write_stat(fd->mount, fd->fake_inode, &ishstat);
    db_commit(fd->mount);
    return 0;
}
