
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,unsigned int) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

int ps3_repository_read_pu_id(unsigned int pu_index, u64 *pu_id)
{
 return read_node(PS3_LPAR_ID_CURRENT,
  make_first_field("bi", 0),
  make_field("pu", pu_index),
  0, 0,
  pu_id, ((void*)0));
}
