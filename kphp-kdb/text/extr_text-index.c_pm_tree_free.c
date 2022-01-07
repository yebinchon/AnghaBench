
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int left; int right; TYPE_1__* w; } ;
typedef TYPE_2__ pm_cell_t ;
struct TYPE_4__ {int code_len; } ;


 int assert (int) ;

__attribute__((used)) static void pm_tree_free (pm_cell_t *A, int n) {
  assert (n);
  if (n < 0) {
    A[n].w->code_len++;

  } else {

    pm_tree_free (A, A[n].left);

    pm_tree_free (A, A[n].right);

    A[n].left = A[0].left;
    A[0].left = n;
  }
}
