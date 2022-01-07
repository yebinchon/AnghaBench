
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; int root; } ;
typedef TYPE_1__ tree23_root_t ;


 int* sort_rec (int ,int*,int ) ;

__attribute__((used)) static int *sort (tree23_root_t *R, int *st) {
  if (!R->root) {
    return st;
  }
  return sort_rec (R->root, st, R->depth);
}
