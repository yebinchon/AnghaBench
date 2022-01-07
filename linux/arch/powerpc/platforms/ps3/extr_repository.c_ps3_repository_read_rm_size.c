
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,unsigned int,int ,int *,int *) ;

int ps3_repository_read_rm_size(unsigned int ppe_id, u64 *rm_size)
{
 return read_node(PS3_LPAR_ID_CURRENT,
  make_first_field("bi", 0),
  make_field("pu", 0),
  ppe_id,
  make_field("rm_size", 0),
  rm_size, ((void*)0));
}
