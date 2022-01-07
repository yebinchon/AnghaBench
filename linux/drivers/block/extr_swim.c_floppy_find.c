
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swim_priv {int floppy_count; TYPE_1__* unit; } ;
struct kobject {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {int disk; } ;


 struct kobject* get_disk_and_module (int ) ;

__attribute__((used)) static struct kobject *floppy_find(dev_t dev, int *part, void *data)
{
 struct swim_priv *swd = data;
 int drive = (*part & 3);

 if (drive >= swd->floppy_count)
  return ((void*)0);

 *part = 0;
 return get_disk_and_module(swd->unit[drive].disk);
}
