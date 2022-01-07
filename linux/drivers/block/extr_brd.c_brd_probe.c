
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct brd_device {int brd_disk; } ;
typedef int dev_t ;


 int MINOR (int ) ;
 int brd_devices_mutex ;
 struct brd_device* brd_init_one (int,int*) ;
 struct kobject* get_disk_and_module (int ) ;
 int max_part ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct kobject *brd_probe(dev_t dev, int *part, void *data)
{
 struct brd_device *brd;
 struct kobject *kobj;
 bool new;

 mutex_lock(&brd_devices_mutex);
 brd = brd_init_one(MINOR(dev) / max_part, &new);
 kobj = brd ? get_disk_and_module(brd->brd_disk) : ((void*)0);
 mutex_unlock(&brd_devices_mutex);

 if (new)
  *part = 0;

 return kobj;
}
