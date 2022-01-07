
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct inode_data {int dummy; } ;
typedef int ino_t ;


 struct inode_data* inode_get_data (struct mount*,int ) ;
 int inodes_lock ;
 int lock (int *) ;
 int unlock (int *) ;

bool inode_is_orphaned(struct mount *mount, ino_t ino) {
    lock(&inodes_lock);
    struct inode_data *inode = inode_get_data(mount, ino);
    unlock(&inodes_lock);
    return inode == ((void*)0);
}
