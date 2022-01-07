
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ref_cnt; } ;
struct tl_tree_var_num {TYPE_1__ self; } ;
struct tl_tree {int dummy; } ;


 int ADD_PFREE (int) ;
 int fprintf (int ,char*) ;
 int persistent_tree_nodes ;
 int stderr ;
 int total_ref_cnt ;
 int zzfree (struct tl_tree_var_num*,int) ;

void tl_tree_dec_ref_pvar_num (struct tl_tree *_x) {
  total_ref_cnt --;
  struct tl_tree_var_num *x = (void *)_x;



  x->self.ref_cnt --;
  if (x->self.ref_cnt > 0) { return; }
  persistent_tree_nodes --;
  zzfree (x, sizeof (*x));
  ADD_PFREE (sizeof (*x));
}
