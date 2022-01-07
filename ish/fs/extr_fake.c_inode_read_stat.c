
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inode_read_stat; } ;
struct mount {TYPE_1__ stmt; } ;
struct ish_stat {int dummy; } ;
typedef scalar_t__ ino_t ;


 int db_exec (struct mount*,int ) ;
 int db_reset (struct mount*,int ) ;
 int die (char*,unsigned long long) ;
 int sqlite3_bind_int64 (int ,int,scalar_t__) ;
 scalar_t__ sqlite3_column_blob (int ,int ) ;

__attribute__((used)) static void inode_read_stat(struct mount *mount, ino_t inode, struct ish_stat *stat) {

    sqlite3_bind_int64(mount->stmt.inode_read_stat, 1, inode);
    if (!db_exec(mount, mount->stmt.inode_read_stat))
        die("inode_read_stat(%llu): missing inode", (unsigned long long) inode);
    *stat = *(struct ish_stat *) sqlite3_column_blob(mount->stmt.inode_read_stat, 0);
    db_reset(mount, mount->stmt.inode_read_stat);
}
