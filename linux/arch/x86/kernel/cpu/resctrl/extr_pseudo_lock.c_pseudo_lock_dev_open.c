
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int waitcount; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct rdtgroup* private_data; } ;


 int ENODEV ;
 int FMODE_LSEEK ;
 int FMODE_PREAD ;
 int FMODE_PWRITE ;
 int atomic_inc (int *) ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdtgroup_mutex ;
 struct rdtgroup* region_find_by_minor (int ) ;

__attribute__((used)) static int pseudo_lock_dev_open(struct inode *inode, struct file *filp)
{
 struct rdtgroup *rdtgrp;

 mutex_lock(&rdtgroup_mutex);

 rdtgrp = region_find_by_minor(iminor(inode));
 if (!rdtgrp) {
  mutex_unlock(&rdtgroup_mutex);
  return -ENODEV;
 }

 filp->private_data = rdtgrp;
 atomic_inc(&rdtgrp->waitcount);

 filp->f_mode &= ~(FMODE_LSEEK | FMODE_PREAD | FMODE_PWRITE);

 mutex_unlock(&rdtgroup_mutex);

 return 0;
}
