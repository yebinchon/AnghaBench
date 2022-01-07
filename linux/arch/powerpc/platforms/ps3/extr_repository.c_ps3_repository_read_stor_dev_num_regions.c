
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int PS3_LPAR_ID_PME ;
 int make_field (char*,unsigned int) ;
 int make_first_field (char*,unsigned int) ;
 int read_node (int ,int ,int ,int ,int ,unsigned int*,int *) ;

int ps3_repository_read_stor_dev_num_regions(unsigned int bus_index,
 unsigned int dev_index, unsigned int *num_regions)
{
 int result;
 u64 v1 = 0;

 result = read_node(PS3_LPAR_ID_PME,
  make_first_field("bus", bus_index),
  make_field("dev", dev_index),
  make_field("n_regs", 0),
  0, &v1, ((void*)0));
 *num_regions = v1;
 return result;
}
