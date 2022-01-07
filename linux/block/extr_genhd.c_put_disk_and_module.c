
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct gendisk {TYPE_1__* fops; } ;
struct TYPE_2__ {struct module* owner; } ;


 int module_put (struct module*) ;
 int put_disk (struct gendisk*) ;

void put_disk_and_module(struct gendisk *disk)
{
 if (disk) {
  struct module *owner = disk->fops->owner;

  put_disk(disk);
  module_put(owner);
 }
}
