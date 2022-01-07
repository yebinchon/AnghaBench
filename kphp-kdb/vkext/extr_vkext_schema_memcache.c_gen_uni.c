
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_tree_var_type {int var_num; } ;
struct tl_tree_var_num {int var_num; int dif; } ;
struct tl_tree_type {int children_num; struct tl_tree** children; void* type; } ;
struct tl_tree_array {int args_num; int * args; struct tl_tree* multiplicity; } ;
struct tl_tree {int dummy; } ;
struct TYPE_2__ {int (* type ) (struct tl_tree*) ;} ;







 TYPE_1__* TL_TREE_METHODS (struct tl_tree*) ;
 int assert (struct tl_tree*) ;
 int gen_uni_arg (int ,void**,int,int*) ;
 int stub1 (struct tl_tree*) ;
 void* tluni_check_array ;
 void* tluni_check_nat_const ;
 void* tluni_check_nat_var ;
 void* tluni_check_type ;
 void* tluni_check_type_var ;
 void* tluni_set_nat_var ;
 void* tluni_set_type_var ;

int gen_uni (struct tl_tree *t, void **IP, int max_size, int *vars) {
  if (max_size <= 10) { return -1; }
  assert (t);
  int x = TL_TREE_METHODS (t)->type (t);
  int l = 0;
  int i;
  int j;
  struct tl_tree_type *t1;
  struct tl_tree_array *t2;
  int y;
  switch (x) {
  case 130:
    t1 = (void *)t;
    IP[l ++] = tluni_check_type;
    IP[l ++] = ((struct tl_tree_type *)t)->type;
    for (i = 0; i < t1->children_num; i++) {
      y = gen_uni (t1->children[i], IP + l, max_size - l, vars);
      if (y < 0) { return -1; }
      l += y;
    }
    return l;
  case 131:
    IP[l ++] = tluni_check_nat_const;
    IP[l ++] = t;
    return l;
  case 132:
    t2 = (void *)t;
    IP[l ++] = tluni_check_array;
    IP[l ++] = t;
    y = gen_uni (t2->multiplicity, IP + l, max_size - l, vars);
    if (y < 0) { return -1; }
    l += y;
    for (i = 0; i < t2->args_num; i++) {
      y += gen_uni_arg (t2->args[i], IP + l, max_size - l, vars);
      if (y < 0) { return -1; }
      l += y;
    }
    return l;
  case 128:
    i = ((struct tl_tree_var_type *)t)->var_num;
    if (!vars[i]) {
      IP[l ++] = tluni_set_type_var;
      IP[l ++] = (void *)(long)i;

      vars[i] = 1;
    } else if (vars[i] == 1) {
      IP[l ++] = tluni_check_type_var;
      IP[l ++] = (void *)(long)i;

    } else {
      return -1;
    }
    return l;
  case 129:
    i = ((struct tl_tree_var_num *)t)->var_num;
    j = ((struct tl_tree_var_num *)t)->dif;
    if (!vars[i]) {
      IP[l ++] = tluni_set_nat_var;
      IP[l ++] = (void *)(long)i;
      IP[l ++] = (void *)(long)j;
      vars[i] = 2;
    } else if (vars[i] == 2) {
      IP[l ++] = tluni_check_nat_var;
      IP[l ++] = (void *)(long)i;
      IP[l ++] = (void *)(long)j;
    } else {
      return -1;
    }
    return l;
  default:
    assert (0);
    return -1;
  }
}
