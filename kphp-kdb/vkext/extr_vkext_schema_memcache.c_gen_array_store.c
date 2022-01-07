
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_tree_array {int args_num; int * args; } ;


 int gen_field (int ,void**,int,int*,int,int) ;
 void* tlsub_ret_ok ;

int gen_array_store (struct tl_tree_array *a, void **IP, int max_size, int *vars) {
  if (max_size <= 10) { return -1; }
  int l = 0;
  int i;
  if (a->args_num > 1) {
    for (i = 0; i < a->args_num; i++) {
      int x = gen_field (a->args[i], IP + l, max_size - l, vars, i, 0);
      if (x < 0) { return -1; }
      l += x;
    }
  } else {
    int x = gen_field (a->args[0], IP + l, max_size - l, vars, 0, 1);
    if (x < 0) { return -1; }
    l += x;
  }
  if (max_size - l <= 10) { return -1; }
  IP[l ++] = tlsub_ret_ok;

  return l;
}
