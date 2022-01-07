
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ref_cnt; } ;
struct tl_tree_type {int children_num; struct tl_tree_type* children; TYPE_2__ self; TYPE_1__* type; } ;
struct tl_tree {int dummy; } ;
struct TYPE_3__ {char* id; } ;


 int DEC_REF (struct tl_tree_type) ;
 int dynamic_tree_nodes ;
 int fprintf (int ,char*,char*,int,int) ;
 int stderr ;
 int total_ref_cnt ;
 int zzefree (struct tl_tree_type*,int) ;

void tl_tree_dec_ref_type (struct tl_tree *_x) {
  total_ref_cnt --;
  struct tl_tree_type *x = (void *)_x;



  x->self.ref_cnt --;
  if (x->self.ref_cnt > 0) { return; }
  dynamic_tree_nodes --;
  int i;
  for (i = 0; i < x->children_num; i++) {
    DEC_REF (x->children[i]);
  }
  zzefree (x->children, sizeof (void *) * x->children_num);
  zzefree (x, sizeof (*x));
}
