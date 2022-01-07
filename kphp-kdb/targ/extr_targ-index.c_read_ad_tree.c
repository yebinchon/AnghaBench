
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treeref_t ;


 int AdSpace ;
 int assert (int) ;
 int idx_load_next (int) ;
 int idx_rptr ;
 int intree_build_from_list (int ,int*,int) ;
 int targeting_disabled ;

treeref_t read_ad_tree (int nodes) {
  assert (nodes >= 0);
  if (!nodes) {
    return 0;
  }
  assert (idx_load_next (nodes * 8) >= nodes * 8);
  int *A = (int *) idx_rptr;
  idx_rptr += nodes * 8;
  if (!targeting_disabled) {
    return intree_build_from_list (AdSpace, A, nodes);
  }
  return 0;
}
