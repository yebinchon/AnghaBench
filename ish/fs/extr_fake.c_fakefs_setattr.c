
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int dummy; } ;
struct ish_stat {int dummy; } ;
struct attr {scalar_t__ type; } ;
typedef int ino_t ;
struct TYPE_2__ {int (* setattr ) (struct mount*,char const*,struct attr) ;} ;


 int _ENOENT ;
 scalar_t__ attr_size ;
 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int db_rollback (struct mount*) ;
 int fake_stat_setattr (struct ish_stat*,struct attr) ;
 int inode_write_stat (struct mount*,int ,struct ish_stat*) ;
 int path_read_stat (struct mount*,char const*,struct ish_stat*,int *) ;
 TYPE_1__ realfs ;
 int stub1 (struct mount*,char const*,struct attr) ;

__attribute__((used)) static int fakefs_setattr(struct mount *mount, const char *path, struct attr attr) {
    if (attr.type == attr_size)
        return realfs.setattr(mount, path, attr);
    db_begin(mount);
    struct ish_stat ishstat;
    ino_t inode;
    if (!path_read_stat(mount, path, &ishstat, &inode)) {
        db_rollback(mount);
        return _ENOENT;
    }
    fake_stat_setattr(&ishstat, attr);
    inode_write_stat(mount, inode, &ishstat);
    db_commit(mount);
    return 0;
}
