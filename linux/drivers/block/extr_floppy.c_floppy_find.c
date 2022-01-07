
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef int dev_t ;


 int ARRAY_SIZE (int ) ;
 int N_DRIVE ;
 int * disks ;
 int floppy_available (int) ;
 int floppy_type ;
 struct kobject* get_disk_and_module (int ) ;

__attribute__((used)) static struct kobject *floppy_find(dev_t dev, int *part, void *data)
{
 int drive = (*part & 3) | ((*part & 0x80) >> 5);
 if (drive >= N_DRIVE || !floppy_available(drive))
  return ((void*)0);
 if (((*part >> 2) & 0x1f) >= ARRAY_SIZE(floppy_type))
  return ((void*)0);
 *part = 0;
 return get_disk_and_module(disks[drive]);
}
