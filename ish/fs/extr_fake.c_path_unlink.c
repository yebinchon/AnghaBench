
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path_unlink; } ;
struct mount {TYPE_1__ stmt; } ;
typedef scalar_t__ ino_t ;


 int bind_path (int ,int,char const*) ;
 int db_exec_reset (struct mount*,int ) ;
 int die (char*,char const*) ;
 scalar_t__ inode_is_orphaned (struct mount*,scalar_t__) ;
 scalar_t__ path_get_inode (struct mount*,char const*) ;
 int try_cleanup_inode (struct mount*,scalar_t__) ;

__attribute__((used)) static void path_unlink(struct mount *mount, const char *path) {
    ino_t inode = path_get_inode(mount, path);
    if (inode == 0)
        die("path_unlink(%s): nonexistent path", path);

    bind_path(mount->stmt.path_unlink, 1, path);
    db_exec_reset(mount, mount->stmt.path_unlink);
    if (inode_is_orphaned(mount, inode))
        try_cleanup_inode(mount, inode);
}
