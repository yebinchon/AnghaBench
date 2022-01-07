
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int ref_cnt; long flags; int * methods; } ;
struct tl_tree_array {long args_num; void* multiplicity; TYPE_2__** args; TYPE_1__ self; } ;
struct tl_tree {int dummy; } ;
struct TYPE_4__ {void* type; int id; } ;


 int TLUNI_NEXT ;
 int dynamic_tree_nodes ;
 int fprintf (int ,char*) ;
 int stderr ;
 int tl_array_methods ;
 int total_tree_nodes_existed ;
 void* zzemalloc (int) ;

void *tlsub_create_array (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  struct tl_tree_array *x = zzemalloc (sizeof (*x));
  dynamic_tree_nodes ++;
  total_tree_nodes_existed ++;
  x->self.ref_cnt = 1;
  x->self.flags = (long)*(IP ++);
  x->self.methods = &tl_array_methods;
  x->args_num = (long)*(IP ++);
  int i;
  x->args = zzemalloc (sizeof (void *) * x->args_num);
  for (i = x->args_num - 1; i >= 0; i--) {
    x->args[i] = zzemalloc (sizeof (*x->args[i]));
    x->args[i]->id = *(IP ++ );
    x->args[i]->type = *(--Data);

  }
  x->multiplicity = *(--Data);




  *(Data ++) = x;
  TLUNI_NEXT;
}
