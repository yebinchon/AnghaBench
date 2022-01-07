
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path_get_inode; } ;
struct mount {TYPE_1__ stmt; } ;
typedef int ino_t ;


 int bind_path (int ,int,char const*) ;
 scalar_t__ db_exec (struct mount*,int ) ;
 int db_reset (struct mount*,int ) ;
 int sqlite3_column_int64 (int ,int ) ;

ino_t path_get_inode(struct mount *mount, const char *path) {

    bind_path(mount->stmt.path_get_inode, 1, path);
    ino_t inode = 0;
    if (db_exec(mount, mount->stmt.path_get_inode))
        inode = sqlite3_column_int64(mount->stmt.path_get_inode, 0);
    db_reset(mount, mount->stmt.path_get_inode);
    return inode;
}
