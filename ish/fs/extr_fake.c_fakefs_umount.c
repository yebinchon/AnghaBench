
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int try_cleanup_inode; int path_from_inode; int path_rename; int path_unlink; int path_link; int inode_write_stat; int inode_read_stat; int path_create_path; int path_create_stat; int path_read_stat; int path_get_inode; int rollback; int commit; int begin; } ;
struct mount {scalar_t__ db; TYPE_1__ stmt; } ;


 int SQLITE_OK ;
 int printk (char*,int) ;
 int sqlite3_close (scalar_t__) ;
 int sqlite3_finalize (int ) ;

__attribute__((used)) static int fakefs_umount(struct mount *mount) {
    if (mount->db) {
        sqlite3_finalize(mount->stmt.begin);
        sqlite3_finalize(mount->stmt.commit);
        sqlite3_finalize(mount->stmt.rollback);
        sqlite3_finalize(mount->stmt.path_get_inode);
        sqlite3_finalize(mount->stmt.path_read_stat);
        sqlite3_finalize(mount->stmt.path_create_stat);
        sqlite3_finalize(mount->stmt.path_create_path);
        sqlite3_finalize(mount->stmt.inode_read_stat);
        sqlite3_finalize(mount->stmt.inode_write_stat);
        sqlite3_finalize(mount->stmt.path_link);
        sqlite3_finalize(mount->stmt.path_unlink);
        sqlite3_finalize(mount->stmt.path_rename);
        sqlite3_finalize(mount->stmt.path_from_inode);
        sqlite3_finalize(mount->stmt.try_cleanup_inode);
        int err = sqlite3_close(mount->db);
        if (err != SQLITE_OK) {
            printk("sqlite failed to close: %d\n", err);
        }
    }

    return 0;
}
