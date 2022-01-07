
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_tree_nat_const {int dummy; } ;
struct tl_tree {scalar_t__ ref_cnt; } ;


 int ADD_FREE (int) ;
 int persistent_tree_nodes ;
 int total_ref_cnt ;
 int zzfree (struct tl_tree*,int) ;

void tl_tree_dec_ref_pnat_const_full (struct tl_tree *_x) {
  _x->ref_cnt --;
  total_ref_cnt --;
  if (_x->ref_cnt > 0) { return; }
  persistent_tree_nodes --;
  zzfree (_x, sizeof (struct tl_tree_nat_const));
  ADD_FREE (sizeof (struct tl_tree_nat_const));
  return;
}
