
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_PME ;
 int make_field (char*,unsigned int) ;
 int make_first_field (char*,unsigned int) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

int ps3_repository_read_dev_reg_addr(unsigned int bus_index,
 unsigned int dev_index, unsigned int reg_index, u64 *bus_addr, u64 *len)
{
 return read_node(PS3_LPAR_ID_PME,
  make_first_field("bus", bus_index),
  make_field("dev", dev_index),
  make_field("reg", reg_index),
  make_field("data", 0),
  bus_addr, len);
}
