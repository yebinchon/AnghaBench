
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inode_write_stat; } ;
struct mount {TYPE_1__ stmt; } ;
struct ish_stat {int dummy; } ;
typedef int ino_t ;


 int SQLITE_TRANSIENT ;
 int db_exec_reset (struct mount*,int ) ;
 int sqlite3_bind_blob (int ,int,struct ish_stat*,int,int ) ;
 int sqlite3_bind_int64 (int ,int,int ) ;

__attribute__((used)) static void inode_write_stat(struct mount *mount, ino_t inode, struct ish_stat *stat) {

    sqlite3_bind_blob(mount->stmt.inode_write_stat, 1, stat, sizeof(*stat), SQLITE_TRANSIENT);
    sqlite3_bind_int64(mount->stmt.inode_write_stat, 2, inode);
    db_exec_reset(mount, mount->stmt.inode_write_stat);
}
