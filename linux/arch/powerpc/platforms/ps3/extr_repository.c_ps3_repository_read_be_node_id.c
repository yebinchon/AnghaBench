
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_PME ;
 int make_first_field (char*,unsigned int) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

int ps3_repository_read_be_node_id(unsigned int be_index, u64 *node_id)
{
 return read_node(PS3_LPAR_ID_PME,
  make_first_field("be", be_index),
  0,
  0,
  0,
  node_id, ((void*)0));
}
