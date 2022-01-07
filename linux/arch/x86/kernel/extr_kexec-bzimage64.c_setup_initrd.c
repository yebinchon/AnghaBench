
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ramdisk_image; unsigned long ramdisk_size; } ;
struct boot_params {unsigned long ext_ramdisk_image; unsigned long ext_ramdisk_size; TYPE_1__ hdr; } ;



__attribute__((used)) static int setup_initrd(struct boot_params *params,
  unsigned long initrd_load_addr, unsigned long initrd_len)
{
 params->hdr.ramdisk_image = initrd_load_addr & 0xffffffffUL;
 params->hdr.ramdisk_size = initrd_len & 0xffffffffUL;

 params->ext_ramdisk_image = initrd_load_addr >> 32;
 params->ext_ramdisk_size = initrd_len >> 32;

 return 0;
}
