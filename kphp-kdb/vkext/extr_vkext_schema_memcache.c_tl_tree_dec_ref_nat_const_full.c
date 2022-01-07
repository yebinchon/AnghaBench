
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_tree_nat_const {int dummy; } ;
struct tl_tree {scalar_t__ ref_cnt; } ;


 int dynamic_tree_nodes ;
 int total_ref_cnt ;
 int zzefree (struct tl_tree*,int) ;

void tl_tree_dec_ref_nat_const_full (struct tl_tree *_x) {
  total_ref_cnt --;
  _x->ref_cnt --;
  if (_x->ref_cnt > 0) { return; }
  dynamic_tree_nodes --;
  zzefree (_x, sizeof (struct tl_tree_nat_const));
  return;
}
