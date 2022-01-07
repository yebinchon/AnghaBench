
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int root; } ;
typedef TYPE_1__ treap ;


 int assert (int) ;
 int trp_dfs (int ,int*) ;

int trp_conv_to_array_rev (treap tr, int *res) {
  assert (trp_dfs (tr.root, res) == -tr.size);
  return -tr.size;
}
