
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int ref_cnt; long flags; int * methods; } ;
struct tl_tree_type {int children_num; void** children; TYPE_2__* type; TYPE_1__ self; } ;
struct tl_tree {int dummy; } ;
struct TYPE_4__ {char* id; int arity; } ;


 int TLUNI_NEXT ;
 int dynamic_tree_nodes ;
 int fprintf (int ,char*,char*,long) ;
 int stderr ;
 int tl_type_methods ;
 int total_ref_cnt ;
 int total_tree_nodes_existed ;
 void* zzemalloc (int) ;

void *tlsub_create_type (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  struct tl_tree_type *x = zzemalloc (sizeof (*x));
  dynamic_tree_nodes ++;
  total_tree_nodes_existed ++;
  x->self.ref_cnt = 1;
  total_ref_cnt ++;
  x->self.flags = (long)*(IP ++);
  x->self.methods = &tl_type_methods;
  x->type = *(IP ++);



  x->children_num = x->type->arity;
  x->children = zzemalloc (sizeof (void *) * x->children_num);
  int i;
  for (i = x->children_num - 1; i >= 0; i--) {
    x->children[i] = *(--Data);

  }
  *(Data ++) = x;

  TLUNI_NEXT;
}
