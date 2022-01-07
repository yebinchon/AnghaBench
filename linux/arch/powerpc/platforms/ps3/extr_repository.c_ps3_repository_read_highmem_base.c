
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,unsigned int) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

int ps3_repository_read_highmem_base(unsigned int region_index,
 u64 *highmem_base)
{
 return read_node(PS3_LPAR_ID_CURRENT,
  make_first_field("highmem", 0),
  make_field("region", region_index),
  make_field("base", 0),
  0,
  highmem_base, ((void*)0));
}
