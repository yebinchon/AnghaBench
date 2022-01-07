
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_PME ;
 int make_field (char*,unsigned int) ;
 int make_first_field (char*,unsigned int) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

int ps3_repository_read_stor_dev_port(unsigned int bus_index,
 unsigned int dev_index, u64 *port)
{
 return read_node(PS3_LPAR_ID_PME,
  make_first_field("bus", bus_index),
  make_field("dev", dev_index),
  make_field("port", 0),
  0, port, ((void*)0));
}
