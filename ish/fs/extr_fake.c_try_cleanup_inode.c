
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int try_cleanup_inode; } ;
struct mount {TYPE_1__ stmt; } ;
typedef int ino_t ;


 int db_exec_reset (struct mount*,int ) ;
 int sqlite3_bind_int64 (int ,int,int ) ;

__attribute__((used)) static void try_cleanup_inode(struct mount *mount, ino_t inode) {
    sqlite3_bind_int64(mount->stmt.try_cleanup_inode, 1, inode);
    db_exec_reset(mount, mount->stmt.try_cleanup_inode);
}
