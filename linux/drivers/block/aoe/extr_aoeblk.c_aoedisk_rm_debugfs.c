
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoedev {int * debugfs; } ;


 int debugfs_remove (int *) ;

void
aoedisk_rm_debugfs(struct aoedev *d)
{
 debugfs_remove(d->debugfs);
 d->debugfs = ((void*)0);
}
