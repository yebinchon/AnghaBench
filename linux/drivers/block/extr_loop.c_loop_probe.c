
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_disk; } ;
struct kobject {int dummy; } ;
typedef int dev_t ;


 int MINOR (int ) ;
 struct kobject* get_disk_and_module (int ) ;
 int loop_add (struct loop_device**,int) ;
 int loop_ctl_mutex ;
 int loop_lookup (struct loop_device**,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int part_shift ;

__attribute__((used)) static struct kobject *loop_probe(dev_t dev, int *part, void *data)
{
 struct loop_device *lo;
 struct kobject *kobj;
 int err;

 mutex_lock(&loop_ctl_mutex);
 err = loop_lookup(&lo, MINOR(dev) >> part_shift);
 if (err < 0)
  err = loop_add(&lo, MINOR(dev) >> part_shift);
 if (err < 0)
  kobj = ((void*)0);
 else
  kobj = get_disk_and_module(lo->lo_disk);
 mutex_unlock(&loop_ctl_mutex);

 *part = 0;
 return kobj;
}
