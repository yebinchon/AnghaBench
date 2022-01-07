
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct inode_data {size_t number; int lock; scalar_t__ refcount; int chain; int posix_locks; int posix_unlock; scalar_t__ socket_id; struct mount* mount; } ;
typedef size_t ino_t ;


 size_t INODES_HASH_SIZE ;
 int cond_init (int *) ;
 struct inode_data* inode_get_data (struct mount*,size_t) ;
 int * inodes_hash ;
 int inodes_lock ;
 int list_add (int *,int *) ;
 int list_init (int *) ;
 int lock (int *) ;
 int lock_init (int *) ;
 struct inode_data* malloc (int) ;
 int mount_retain (struct mount*) ;
 int unlock (int *) ;

struct inode_data *inode_get(struct mount *mount, ino_t ino) {
    lock(&inodes_lock);
    struct inode_data *inode = inode_get_data(mount, ino);
    if (inode == ((void*)0)) {
        inode = malloc(sizeof(struct inode_data));
        inode->refcount = 0;
        inode->number = ino;
        mount_retain(mount);
        inode->mount = mount;
        inode->socket_id = 0;
        cond_init(&inode->posix_unlock);
        list_init(&inode->posix_locks);
        list_init(&inode->chain);
        lock_init(&inode->lock);
        list_add(&inodes_hash[ino % INODES_HASH_SIZE], &inode->chain);
    }

    lock(&inode->lock);
    inode->refcount++;
    unlock(&inode->lock);
    unlock(&inodes_lock);
    return inode;
}
