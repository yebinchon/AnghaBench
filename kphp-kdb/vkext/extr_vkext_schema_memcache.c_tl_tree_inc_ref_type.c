
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_tree {int ref_cnt; } ;


 int total_ref_cnt ;

void tl_tree_inc_ref_type (struct tl_tree *x) {
  total_ref_cnt ++;
  x->ref_cnt ++;

}
