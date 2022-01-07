
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int PS3_LPAR_ID_PME ;
 int make_field (char*,int ) ;
 int make_first_field (char*,int ) ;
 int ps3_repository_read_be_node_id (unsigned int,scalar_t__*) ;
 int read_node (int ,int ,scalar_t__,int ,int ,scalar_t__*,scalar_t__*) ;

int ps3_repository_read_lpm_privileges(unsigned int be_index, u64 *lpar,
 u64 *rights)
{
 int result;
 u64 node_id;

 *lpar = 0;
 *rights = 0;
 result = ps3_repository_read_be_node_id(be_index, &node_id);
 return result ? result
  : read_node(PS3_LPAR_ID_PME,
       make_first_field("be", 0),
       node_id,
       make_field("lpm", 0),
       make_field("priv", 0),
       lpar, rights);
}
