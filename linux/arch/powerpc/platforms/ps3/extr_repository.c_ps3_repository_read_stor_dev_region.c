
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ps3_repository_read_stor_dev_region_id (unsigned int,unsigned int,unsigned int,unsigned int*) ;
 int ps3_repository_read_stor_dev_region_size (unsigned int,unsigned int,unsigned int,int *) ;
 int ps3_repository_read_stor_dev_region_start (unsigned int,unsigned int,unsigned int,int *) ;

int ps3_repository_read_stor_dev_region(unsigned int bus_index,
 unsigned int dev_index, unsigned int region_index,
 unsigned int *region_id, u64 *region_start, u64 *region_size)
{
 int result;

 result = ps3_repository_read_stor_dev_region_id(bus_index, dev_index,
  region_index, region_id);
 if (result)
     return result;

 result = ps3_repository_read_stor_dev_region_start(bus_index, dev_index,
  region_index, region_start);
 if (result)
     return result;

 result = ps3_repository_read_stor_dev_region_size(bus_index, dev_index,
  region_index, region_size);
 return result;
}
