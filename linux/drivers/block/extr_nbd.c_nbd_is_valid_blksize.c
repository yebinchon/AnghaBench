
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SIZE ;
 int is_power_of_2 (unsigned long) ;

__attribute__((used)) static bool nbd_is_valid_blksize(unsigned long blksize)
{
 if (!blksize || !is_power_of_2(blksize) || blksize < 512 ||
     blksize > PAGE_SIZE)
  return 0;
 return 1;
}
