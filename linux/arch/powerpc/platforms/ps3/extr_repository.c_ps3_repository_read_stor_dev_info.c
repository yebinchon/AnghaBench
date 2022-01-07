
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ps3_repository_read_stor_dev_blk_size (unsigned int,unsigned int,int *) ;
 int ps3_repository_read_stor_dev_num_blocks (unsigned int,unsigned int,int *) ;
 int ps3_repository_read_stor_dev_num_regions (unsigned int,unsigned int,unsigned int*) ;
 int ps3_repository_read_stor_dev_port (unsigned int,unsigned int,int *) ;

int ps3_repository_read_stor_dev_info(unsigned int bus_index,
 unsigned int dev_index, u64 *port, u64 *blk_size,
 u64 *num_blocks, unsigned int *num_regions)
{
 int result;

 result = ps3_repository_read_stor_dev_port(bus_index, dev_index, port);
 if (result)
     return result;

 result = ps3_repository_read_stor_dev_blk_size(bus_index, dev_index,
  blk_size);
 if (result)
     return result;

 result = ps3_repository_read_stor_dev_num_blocks(bus_index, dev_index,
  num_blocks);
 if (result)
     return result;

 result = ps3_repository_read_stor_dev_num_regions(bus_index, dev_index,
  num_regions);
 return result;
}
