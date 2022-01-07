
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int mount; int * ops; } ;
struct dir_entry {char* name; int inode; } ;
struct TYPE_2__ {int (* readdir ) (struct fd*,struct dir_entry*) ;} ;


 int MAX_PATH ;
 int assert (int) ;
 int db_begin (int ) ;
 int db_commit (int ) ;
 int fakefs_fdops ;
 int path_get_inode (int ,char*) ;
 TYPE_1__ realfs_fdops ;
 int realfs_getpath (struct fd*,char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 int stub1 (struct fd*,struct dir_entry*) ;

__attribute__((used)) static int fakefs_readdir(struct fd *fd, struct dir_entry *entry) {
    assert(fd->ops == &fakefs_fdops);
    int res;
retry:
    res = realfs_fdops.readdir(fd, entry);
    if (res <= 0)
        return res;


    char entry_path[MAX_PATH + 1];
    realfs_getpath(fd, entry_path);
    if (strcmp(entry->name, "..") == 0) {
        if (strcmp(entry_path, "") != 0) {
            *strrchr(entry_path, '/') = '\0';
        }
    } else if (strcmp(entry->name, ".") != 0) {

        strcat(entry_path, "/");
        strcat(entry_path, entry->name);
    }

    db_begin(fd->mount);
    entry->inode = path_get_inode(fd->mount, entry_path);
    db_commit(fd->mount);


    if (entry->inode == 0)
        goto retry;
    return res;
}
