
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_PME ;
 int make_field (char const*,int ) ;
 int make_first_field (char*,unsigned int) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

int ps3_repository_read_bus_str(unsigned int bus_index, const char *bus_str,
 u64 *value)
{
 return read_node(PS3_LPAR_ID_PME,
  make_first_field("bus", bus_index),
  make_field(bus_str, 0),
  0, 0,
  value, ((void*)0));
}
