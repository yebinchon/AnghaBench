
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; int root; } ;
typedef TYPE_1__ tree23_root_t ;


 int count_rec (int ,int ,int*) ;

__attribute__((used)) static void count (tree23_root_t *R, int *A) {
  A[0] = A[1] = A[2] = 0;
  if (!R->root) {
    return;
  }
  count_rec (R->root, R->depth, A);
}
