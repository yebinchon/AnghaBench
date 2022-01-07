
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,unsigned int*,int *) ;

int ps3_repository_read_highmem_region_count(unsigned int *region_count)
{
 int result;
 u64 v1 = 0;

 result = read_node(PS3_LPAR_ID_CURRENT,
  make_first_field("highmem", 0),
  make_field("region", 0),
  make_field("count", 0),
  0,
  &v1, ((void*)0));
 *region_count = v1;
 return result;
}
