
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode_data {scalar_t__ refcount; int lock; TYPE_2__* mount; int chain; } ;
struct TYPE_5__ {TYPE_1__* fs; } ;
struct TYPE_4__ {int (* inode_orphaned ) (TYPE_2__*,struct inode_data*) ;} ;


 int free (struct inode_data*) ;
 int inodes_lock ;
 int list_remove (int *) ;
 int lock (int *) ;
 int mount_release (TYPE_2__*) ;
 int stub1 (TYPE_2__*,struct inode_data*) ;
 int unlock (int *) ;

void inode_release(struct inode_data *inode) {
    lock(&inodes_lock);
    lock(&inode->lock);
    if (--inode->refcount == 0) {
        unlock(&inode->lock);
        list_remove(&inode->chain);
        unlock(&inodes_lock);
        if (inode->mount->fs->inode_orphaned)
            inode->mount->fs->inode_orphaned(inode->mount, inode);
        mount_release(inode->mount);
        free(inode);
    } else {
        unlock(&inode->lock);
        unlock(&inodes_lock);
    }
}
