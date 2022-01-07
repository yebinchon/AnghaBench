
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path_read_stat; } ;
struct mount {TYPE_1__ stmt; } ;
struct ish_stat {int dummy; } ;
typedef int ino_t ;


 int bind_path (int ,int,char const*) ;
 int db_exec (struct mount*,int ) ;
 int db_reset (struct mount*,int ) ;
 scalar_t__ sqlite3_column_blob (int ,int) ;
 int sqlite3_column_int64 (int ,int ) ;

bool path_read_stat(struct mount *mount, const char *path, struct ish_stat *stat, ino_t *inode) {

    bind_path(mount->stmt.path_read_stat, 1, path);
    bool exists = db_exec(mount, mount->stmt.path_read_stat);
    if (exists) {
        if (inode)
            *inode = sqlite3_column_int64(mount->stmt.path_read_stat, 0);
        if (stat)
            *stat = *(struct ish_stat *) sqlite3_column_blob(mount->stmt.path_read_stat, 1);
    }
    db_reset(mount, mount->stmt.path_read_stat);
    return exists;
}
