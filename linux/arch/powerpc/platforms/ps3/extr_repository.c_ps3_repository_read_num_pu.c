
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,scalar_t__*,int *) ;

int ps3_repository_read_num_pu(u64 *num_pu)
{
 *num_pu = 0;
 return read_node(PS3_LPAR_ID_CURRENT,
      make_first_field("bi", 0),
      make_field("pun", 0),
      0, 0,
      num_pu, ((void*)0));
}
