
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_dev_desc_t ;


 int CONFIG_SYS_BLOCK_RAW_MODE_U_BOOT_SECTOR ;
 int block_load_image_raw (int *,int ) ;
 scalar_t__ block_load_image_raw_os (int *) ;
 int hang () ;
 int * spl_get_block_device () ;
 scalar_t__ spl_start_uboot () ;

void spl_block_load_image(void)
{
 int err;
 block_dev_desc_t * device;

 device = spl_get_block_device();



 {
  err = block_load_image_raw(device,
      CONFIG_SYS_BLOCK_RAW_MODE_U_BOOT_SECTOR);
  if (err)
   hang();
 }
}
