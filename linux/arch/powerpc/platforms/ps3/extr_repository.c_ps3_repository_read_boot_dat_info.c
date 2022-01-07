
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ps3_repository_read_boot_dat_address (int *) ;
 int ps3_repository_read_boot_dat_size (unsigned int*) ;

int ps3_repository_read_boot_dat_info(u64 *lpar_addr, unsigned int *size)
{
 int result;

 *size = 0;
 result = ps3_repository_read_boot_dat_address(lpar_addr);
 return result ? result
  : ps3_repository_read_boot_dat_size(size);
}
