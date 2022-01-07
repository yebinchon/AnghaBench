
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct gendisk {char* (* devnode ) (struct gendisk*,int *) ;} ;
struct device {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 struct gendisk* dev_to_disk (struct device*) ;
 char* stub1 (struct gendisk*,int *) ;

__attribute__((used)) static char *block_devnode(struct device *dev, umode_t *mode,
      kuid_t *uid, kgid_t *gid)
{
 struct gendisk *disk = dev_to_disk(dev);

 if (disk->devnode)
  return disk->devnode(disk, mode);
 return ((void*)0);
}
