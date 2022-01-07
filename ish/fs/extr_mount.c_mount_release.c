
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int refcount; } ;


 int lock (int *) ;
 int mounts_lock ;
 int unlock (int *) ;

void mount_release(struct mount *mount) {
    lock(&mounts_lock);
    mount->refcount--;
    unlock(&mounts_lock);
}
