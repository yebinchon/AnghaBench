
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_PME ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

int ps3_repository_read_be_id(u64 node_id, u64 *be_id)
{
 return read_node(PS3_LPAR_ID_PME,
  make_first_field("be", 0),
  node_id,
  0,
  0,
  be_id, ((void*)0));
}
