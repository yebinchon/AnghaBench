
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * path_from_inode; } ;
struct mount {TYPE_1__ stmt; } ;
struct fd {int * ops; int fake_inode; } ;
typedef int sqlite3_stmt ;
typedef int ino_t ;
struct TYPE_4__ {struct fd* (* open ) (struct mount*,char const*,int ,int ) ;} ;


 struct fd* ERR_PTR (scalar_t__) ;
 int O_RDONLY_ ;
 int O_RDWR_ ;
 scalar_t__ PTR_ERR (struct fd*) ;
 scalar_t__ _EISDIR ;
 scalar_t__ _ENOENT ;
 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int db_exec (struct mount*,int *) ;
 int db_reset (struct mount*,int *) ;
 int db_rollback (struct mount*) ;
 int fakefs_fdops ;
 TYPE_2__ realfs ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 struct fd* stub1 (struct mount*,char const*,int ,int ) ;
 struct fd* stub2 (struct mount*,char const*,int ,int ) ;

struct fd *fakefs_open_inode(struct mount *mount, ino_t inode) {
    db_begin(mount);
    sqlite3_stmt *stmt = mount->stmt.path_from_inode;
    sqlite3_bind_int64(stmt, 1, inode);
step:
    if (!db_exec(mount, stmt)) {
        db_reset(mount, stmt);
        db_rollback(mount);
        return ERR_PTR(_ENOENT);
    }
    const char *path = (const char *) sqlite3_column_text(stmt, 0);
    struct fd *fd = realfs.open(mount, path, O_RDWR_, 0);
    if (PTR_ERR(fd) == _EISDIR)
        fd = realfs.open(mount, path, O_RDONLY_, 0);
    if (PTR_ERR(fd) == _ENOENT)
        goto step;
    db_reset(mount, stmt);
    db_commit(mount);
    fd->fake_inode = inode;
    fd->ops = &fakefs_fdops;
    return fd;
}
