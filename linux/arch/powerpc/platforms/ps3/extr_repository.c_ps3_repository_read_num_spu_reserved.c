
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,int ,int ,unsigned int*,int *) ;

int ps3_repository_read_num_spu_reserved(unsigned int *num_spu_reserved)
{
 int result;
 u64 v1 = 0;

 result = read_node(PS3_LPAR_ID_CURRENT,
  make_first_field("bi", 0),
  make_field("spun", 0),
  0, 0,
  &v1, ((void*)0));
 *num_spu_reserved = v1;
 return result;
}
