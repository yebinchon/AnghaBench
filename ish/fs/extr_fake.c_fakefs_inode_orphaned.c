
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct inode_data {int number; } ;


 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int try_cleanup_inode (struct mount*,int ) ;

__attribute__((used)) static void fakefs_inode_orphaned(struct mount *mount, struct inode_data *inode) {
    db_begin(mount);
    try_cleanup_inode(mount, inode->number);
    db_commit(mount);
}
