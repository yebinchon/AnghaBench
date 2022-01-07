
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path_link; } ;
struct mount {TYPE_1__ stmt; } ;
typedef scalar_t__ ino_t ;


 int bind_path (int ,int,char const*) ;
 int db_exec_reset (struct mount*,int ) ;
 int die (char*,char const*,char const*) ;
 scalar_t__ path_get_inode (struct mount*,char const*) ;
 int sqlite3_bind_int64 (int ,int,scalar_t__) ;

__attribute__((used)) static void path_link(struct mount *mount, const char *src, const char *dst) {
    ino_t inode = path_get_inode(mount, src);
    if (inode == 0)
        die("fakefs link(%s, %s): nonexistent src path", src, dst);

    bind_path(mount->stmt.path_link, 1, dst);
    sqlite3_bind_int64(mount->stmt.path_link, 2, inode);
    db_exec_reset(mount, mount->stmt.path_link);
}
