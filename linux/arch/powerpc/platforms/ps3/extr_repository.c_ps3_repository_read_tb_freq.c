
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_LPAR_ID_PME ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,int *,int *) ;

int ps3_repository_read_tb_freq(u64 node_id, u64 *tb_freq)
{
 return read_node(PS3_LPAR_ID_PME,
  make_first_field("be", 0),
  node_id,
  make_field("clock", 0),
  0,
  tb_freq, ((void*)0));
}
