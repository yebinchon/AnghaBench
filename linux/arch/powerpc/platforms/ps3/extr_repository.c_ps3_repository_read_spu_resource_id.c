
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef enum ps3_spu_resource_type { ____Placeholder_ps3_spu_resource_type } ps3_spu_resource_type ;


 int PS3_LPAR_ID_CURRENT ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int read_node (int ,int ,int ,unsigned int,int ,void**,void**) ;

int ps3_repository_read_spu_resource_id(unsigned int res_index,
 enum ps3_spu_resource_type *resource_type, unsigned int *resource_id)
{
 int result;
 u64 v1 = 0;
 u64 v2 = 0;

 result = read_node(PS3_LPAR_ID_CURRENT,
  make_first_field("bi", 0),
  make_field("spursv", 0),
  res_index,
  0,
  &v1, &v2);
 *resource_type = v1;
 *resource_id = v2;
 return result;
}
