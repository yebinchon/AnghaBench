
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct virtio_blk {int vdev; } ;
struct gendisk {struct virtio_blk* private_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t ARRAY_SIZE (char**) ;
 int BUG_ON (int) ;
 struct gendisk* dev_to_disk (struct device*) ;
 int snprintf (char*,int,char*,char*) ;
 char** virtblk_cache_types ;
 size_t virtblk_get_cache_mode (int ) ;

__attribute__((used)) static ssize_t
cache_type_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct gendisk *disk = dev_to_disk(dev);
 struct virtio_blk *vblk = disk->private_data;
 u8 writeback = virtblk_get_cache_mode(vblk->vdev);

 BUG_ON(writeback >= ARRAY_SIZE(virtblk_cache_types));
 return snprintf(buf, 40, "%s\n", virtblk_cache_types[writeback]);
}
