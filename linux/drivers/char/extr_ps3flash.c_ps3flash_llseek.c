
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3_storage_device {size_t region_idx; int blk_size; TYPE_1__* regions; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int size; } ;


 int MAX_LFS_FILESIZE ;
 int generic_file_llseek_size (struct file*,int ,int,int ,int) ;
 struct ps3_storage_device* ps3flash_dev ;

__attribute__((used)) static loff_t ps3flash_llseek(struct file *file, loff_t offset, int origin)
{
 struct ps3_storage_device *dev = ps3flash_dev;
 return generic_file_llseek_size(file, offset, origin, MAX_LFS_FILESIZE,
   dev->regions[dev->region_idx].size*dev->blk_size);
}
