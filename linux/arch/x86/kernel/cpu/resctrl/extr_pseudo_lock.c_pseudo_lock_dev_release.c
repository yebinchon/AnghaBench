
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int waitcount; } ;
struct inode {int dummy; } ;
struct file {struct rdtgroup* private_data; } ;


 int ENODEV ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdtgroup_mutex ;

__attribute__((used)) static int pseudo_lock_dev_release(struct inode *inode, struct file *filp)
{
 struct rdtgroup *rdtgrp;

 mutex_lock(&rdtgroup_mutex);
 rdtgrp = filp->private_data;
 WARN_ON(!rdtgrp);
 if (!rdtgrp) {
  mutex_unlock(&rdtgroup_mutex);
  return -ENODEV;
 }
 filp->private_data = ((void*)0);
 atomic_dec(&rdtgrp->waitcount);
 mutex_unlock(&rdtgroup_mutex);
 return 0;
}
